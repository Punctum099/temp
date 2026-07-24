<script>
    function goCategory(obj,idx){
        $('ul li a').removeClass('on');
        $(obj).addClass("on");


        //카테고리 클릭 시 상단 영역 변경 및 breadcrump 변경
        $('[name=selectCategory]').text($(obj).attr('title'));
        $('.selectCategoryBtn').attr('onclick')

        //임시주석 병오씨 수정바람
        /*location.href= '/kr/page/business/div_main/chammed?pcIdx='+idx;
        return false;*/

        var url = "/kr/div_main/productListAjax";
        var data = {
            pcIdx : idx
        };
        $.ajax({
            url: url,
            type: 'post',
            data: JSON.stringify(data),
            contentType : 'application/json; charset=utf-8',
            dataType: 'json',
            async: false,
            success: function(r) {
                var productsData = r; // Your JSON data here

                $('.biz-product').html('');
                $.each(productsData, function(index, result) {
                    var faiIdxs = result.faiIdxs;
                    var list = JSON.parse(faiIdxs);
                    var prImages = list.filter(function(item) { return item.fav_saved_name === "prdImages"; });
                    var prBrandImg = list.filter(function(item) { return item.fav_saved_name === "prBrandImg"; });

                    var $productItem = $('<li>', { class: 'biz-product-item swiper-slide' });
                    var $productImg = $('<div>', { class: 'product-img' }).appendTo($productItem);
                    var $thumbDiv = $('<div>').appendTo($productImg);
                    var i = 0;
                    var x = 0;
                    if(prImages.length > 0) {
                        prImages.forEach(function(item) {
                            if(result['prDefaultImg']>0){
                                if(i==result['prDefaultImg']) {
                                    $('<a>', {
                                        href: "/kr/page/business/div_detail/" + result.pcCode + "?prIdx=" + result.prIdx,
                                        class: "thumb"
                                    }).append($('<img>', {
                                        src: '/frame/fileDown?atchFileId=' + item.FAI_IDX,
                                        onerror: "this.src='/asset/images/bg_default_615x340.jpg'",
                                        alt: "제품이미지"
                                    })).appendTo($thumbDiv);
                                }
                                i++;
                            } else {
                                if(i<1) {
                                    $('<a>', {
                                        href: "/kr/page/business/div_detail/" + result.pcCode + "?prIdx=" + result.prIdx,
                                        class: "thumb"
                                    }).append($('<img>', {
                                        src: '/frame/fileDown?atchFileId=' + item.FAI_IDX,
                                        onerror: "this.src='/asset/images/bg_default_615x340.jpg'",
                                        alt: "제품이미지"
                                    })).appendTo($thumbDiv);
                                }
                                i++;
                            }
                        });
                    } else {
                        $('<a>', {
                            href: "/kr/page/business/div_detail/" + result.pcCode + "?prIdx=" + result.prIdx,
                            class: "thumb"
                        }).append($('<img>', {
                            src: '/asset/images/bg_default_615x340.jpg',
                            alt: "제품이미지"
                        })).appendTo($thumbDiv);
                    }

                    var $brandEtc = $('<div>', { class: 'brand-etc' }).appendTo($thumbDiv);

                    $('<p>', {
                        class: 'brand-sub',
                        text: result.prKrBrand // 브랜드소개 문구
                    }).appendTo($brandEtc);

                    var $brandThumb = $('<span>', { class: 'brand-thumb' }).appendTo($brandEtc);

                    if(prBrandImg.length > 0) {
                        if(x<1){
                        prBrandImg.forEach(function(item) {
                            $('<img>', {
                                src: '/frame/fileDown?atchFileId=' + item.FAI_IDX,
                                alt: item.file_name // 파일 이름으로 alt 텍스트를 설정
                            }).appendTo($brandThumb);
                        });
                        x++;
                        }
                    } else {
                        // $('<img>', {
                        //     src: '/asset/images/bg_default_615x340.jpg',
                        //     alt: '기본 이미지'
                        // }).appendTo($brandThumb);
                    }

                    var $productSummary = $('<div>', { class: 'product-summary' }).appendTo($productItem);

                    var prSubject= '';
                    if(result.prKrSubject){
                        prSubject=result.prKrSubject;
                    }
                    if(result.prKrShowSubject){
                        prSubject=result.prKrShowSubject;
                    }
                    $('<p>', {
                        class: 'product-nm',
                        text: prSubject // 제품명
                    }).appendTo($productSummary);

                    $('<p>', {
                        class: 'product-copy text-2',
                        text: result.prKrCopy // 제품 서브카피
                    }).appendTo($productSummary);

                    var div= $('<div>', {
                        class: 'product-txt text-1',
                        text: $.trim(result.prKrText).replace(/(?:\r\n|\r|\n)/g, '<br/>')
                    }).appendTo($productSummary);
                    div.html($.trim(result.prKrText).replace(/(?:\r\n|\r|\n)/g, '<br/>'))


                    if($.trim(result.pcShowType).indexOf('01')>-1){
                        $('<a>', {
                            href: "/kr/page/business/div_detail/" + result.pcCode + "?prIdx=" + result.prIdx,
                            class: 'btn-type_round hover-eff'
                        }).append($('<span>', { text: '자세히보기' }))
                            .append($('<i>', { class: 'ico_view' }))
                            .appendTo($productSummary);
                    }
                    if($.trim(result.pcShowType).indexOf('02')>-1){
                        $('<a>', {
                            href: result.pcVrUrl,
                            target:'_blank',
                            class: 'btn-type_round hover-eff'
                        }).append($('<span>', { text: '공식사이트로 이동' }))
                            .append($('<i>', { class: 'ico_view' }))
                            .appendTo($productSummary);
                    }



                    $('.biz-product').append($productItem);
                });
                bizSwiperset();
            },
            error: function (r) {
            }
        });

    }
    var bizSwiper = null;
    let bizOption = {
					slidesPerView: 1,
					spaceBetween: 40,
					loop: true,
					speed: 1000,
					watchSlidesProgress: true,
					effect: 'fade',
					fadeEffect: {
						crossFade: true
					},
					autoHeight:true,
					pagination: {
						el: ".biz-swiper .swiper-pagination",
						type: "fraction",
						formatFractionCurrent: function (number) {
							return ('0' + number).slice(-2);
						},
						formatFractionTotal: function (number) {
								return ('0' + number).slice(-2);
						},
						renderFraction: function (currentClass, totalClass) {
								return '<span class="' + currentClass + '"></span>' +
											' / ' +
											'<span class="' + totalClass + '"></span>';
						}
					},
					navigation: {
						nextEl: ".biz-swiper .swiper-button-next",
						prevEl: ".biz-swiper .swiper-button-prev",
					},
					autoplay: {
						delay: 6000,
						disableOnInteraction: false,
						waitForTransition: true,
						pauseOnMouseEnter: true,
					},
				};
    function bizSwiperset() {
					if (bizSwiper && typeof bizSwiper.destroy === 'function') {
						bizSwiper.destroy(true, true);
						bizSwiper = null;
					}
					var $container = $(".biz-swiper .swiper-container");
					if (!$container.length) {
						return;
					}
					bizSwiper = new Swiper($container[0], bizOption);
				}

					$(document).off("click.bizSwiper", ".biz-swiper .swiper-button-stop");
					$(document).on("click.bizSwiper", ".biz-swiper .swiper-button-stop", function(){
						if (!bizSwiper) return;
						bizSwiper.autoplay.stop();
						$(".biz-swiper .swiper-button-play").show().css("display","inline-block");
						$(".biz-swiper .swiper-button-stop").hide();
					});

					$(document).off("click.bizSwiper", ".biz-swiper .swiper-button-play");
					$(document).on("click.bizSwiper", ".biz-swiper .swiper-button-play", function(){
						if (!bizSwiper) return;
						bizSwiper.autoplay.start();
						$(".biz-swiper .swiper-button-play").hide();
						$(".biz-swiper .swiper-button-stop").show().css("display","inline-block");;
					});

    $('.biz-category li:eq(0) a').addClass('on')
    function goList(link) {

        let idx = $('ul li a.on').attr('data-idx');
        location.href="/kr/page/business/div_list/"+link+"?pcIdx="+idx;
    }

    $(function () {
        if ($('.biz-swiper .swiper-container .biz-product-item').length) {
            bizSwiperset();
        }
    });
</script>
