/**
 * 사업소개 제품 슬라이더 (biz-swiper) 속도 수정 패치
 *
 * 증상: 자동 넘김이 너무 빠르고 탭마다 속도가 들쭉날쭉
 *
 * 원인:
 * 1. autoplay.delay 3000ms — 체감상 빠름 (fade 전환 800ms 포함 시 읽을 시간 ~2.2초)
 * 2. goCategory() → bizSwiperset() 호출 시 기존 Swiper 미삭제 → autoplay 타이머 중복
 * 3. bizSwiperset() 안에서 $(document).on('click') 반복 등록 → play/stop 중복 실행
 *
 * 적용: div_main JSP 하단 <script> 의 bizOption / bizSwiperset 교체
 *       국문·영문 동일 JSP 구조면 같은 수정 적용
 */

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
	autoHeight: true,
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

// play/stop — 한 번만 등록 (bizSwiperset 밖으로 이동)
$(document).off("click.bizSwiper", ".biz-swiper .swiper-button-stop");
$(document).on("click.bizSwiper", ".biz-swiper .swiper-button-stop", function () {
	if (!bizSwiper) return;
	bizSwiper.autoplay.stop();
	$(".biz-swiper .swiper-button-play").show().css("display", "inline-block");
	$(".biz-swiper .swiper-button-stop").hide();
});

$(document).off("click.bizSwiper", ".biz-swiper .swiper-button-play");
$(document).on("click.bizSwiper", ".biz-swiper .swiper-button-play", function () {
	if (!bizSwiper) return;
	bizSwiper.autoplay.start();
	$(".biz-swiper .swiper-button-play").hide();
	$(".biz-swiper .swiper-button-stop").show().css("display", "inline-block");
});

// 최초 로드 시에도 초기화 (기존 JSP에 없으면 추가)
$(function () {
	if ($('.biz-swiper .swiper-container .biz-product-item').length) {
		bizSwiperset();
	}
});
