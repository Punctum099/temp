<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/jsp/_cmm/directives.jsp"%>

		<main role="main" class="management">
			<div id="container">
				<section class="management-synthesis-report">
					<div class="section-head">
						<div class="section-inner">
							<div class="text-wrap">
								<h2 class="main-title">
									<strong>Integrated Report</strong>
								</h2>
								<p class="sub-title text-1">The Group's Integrated Report ‘Gamasot’ evidences that sustainable management pays off in terms of return to the stakeholders and value it creates.</p>
							</div>
							<div class="head-img">
								<div class="img img-1">
									<img src="/asset/images/management/management.png" alt="">
								</div>
							</div>
						</div>
					</div>
					<div class="section-contents">
						<div class="synthesis-report">
							<div class="section-inner">
								<div class="synthesis-report-tab">
									<ul class="synthesis-report-tab-list" role="tablist">
										<li class="tab-item on" role="presentation">
											<button type="button" role="tab" aria-selected="true" data-tab="integrated">Dong-A Socio Group Integrated Report "Gamasot"</button>
										</li>
										<li class="tab-item" role="presentation">
											<button type="button" role="tab" aria-selected="false" data-tab="st-sustainability">Dong-A ST Sustainability Report</button>
										</li>
									</ul>
								</div>

								<!-- 탭1: 기존 통합보고서 (AJAX) -->
								<div class="synthesis-report-panel on" data-panel="integrated" role="tabpanel">
									<p class="title-s3">Composed to report both financial and non-financial performances and the corporate duties as a responsible member of the society, Dong-A Socio Group's integrated report Gamasot represents the Group's efforts to stay responsible and transparent to both shareholders and vendors.</p>
									<ul class="synthesis-report-list">
<%--									<li class="synthesis-report-item">--%>
<%--										<!-- href="파일 경로", download="다운 받을 때 새로운 이름" -->--%>
<%--										<a href="/asset/images/main/business_ico_1.png" download="2022 Annual Report">--%>
<%--											<div class="thumb">--%>
<%--												<img src="/asset/images/management/synthesis_report_img_ex.png" alt="2022 GAMASOT(2022.01.01~2022.12.31)" class="pc-part">--%>
<%--												<img src="/asset/images/management/synthesis_report_img_ex.png" alt="2022 GAMASOT(2022.01.01~2022.12.31)" class="mo-part">--%>
<%--											</div>--%>
<%--											<div class="content">--%>
<%--												<span class="text-2">Integrated Report</span>--%>
<%--												<strong class="title-s3">2022 GAMASOT<br>(2022.01.01~2022.12.31)</strong>--%>
<%--											</div>--%>
<%--										</a>--%>
<%--									</li>--%>
<%--									<li class="synthesis-report-item">--%>
<%--										<a href="/asset/images/main/business_ico_1.png" download="2022 Annual Report">--%>
<%--											<div class="thumb">--%>
<%--												<img src="/asset/images/management/synthesis_report_img_ex.png" alt="2022 GAMASOT(2022.01.01~2022.12.31)" class="pc-part">--%>
<%--												<img src="/asset/images/management/synthesis_report_img_ex.png" alt="2022 GAMASOT(2022.01.01~2022.12.31)" class="mo-part">--%>
<%--											</div>--%>
<%--											<div class="content">--%>
<%--												<span class="text-2">Integrated Report</span>--%>
<%--												<strong class="title-s3">2022 GAMASOT<br>(2022.01.01~2022.12.31)</strong>--%>
<%--											</div>--%>
<%--										</a>--%>
<%--									</li>--%>
<%--									<li class="synthesis-report-item">--%>
<%--										<a href="/asset/images/main/business_ico_1.png" download="2022 Annual Report">--%>
<%--											<div class="thumb">--%>
<%--												<img src="/asset/images/management/synthesis_report_img_ex.png" alt="2022 GAMASOT(2022.01.01~2022.12.31)" class="pc-part">--%>
<%--												<img src="/asset/images/management/synthesis_report_img_ex.png" alt="2022 GAMASOT(2022.01.01~2022.12.31)" class="mo-part">--%>
<%--											</div>--%>
<%--											<div class="content">--%>
<%--												<span class="text-2">Integrated Report</span>--%>
<%--												<strong class="title-s3">2022 GAMASOT<br>(2022.01.01~2022.12.31)</strong>--%>
<%--											</div>--%>
<%--										</a>--%>
<%--									</li>--%>
<%--									<li class="synthesis-report-item">--%>
<%--										<a href="/asset/images/main/business_ico_1.png" download="2022 Annual Report">--%>
<%--											<div class="thumb">--%>
<%--												<img src="/asset/images/management/synthesis_report_img_ex.png" alt="2022 GAMASOT(2022.01.01~2022.12.31)" class="pc-part">--%>
<%--												<img src="/asset/images/management/synthesis_report_img_ex.png" alt="2022 GAMASOT(2022.01.01~2022.12.31)" class="mo-part">--%>
<%--											</div>--%>
<%--											<div class="content">--%>
<%--												<span class="text-2">Integrated Report</span>--%>
<%--												<strong class="title-s3">2022 GAMASOT<br>(2022.01.01~2022.12.31)</strong>--%>
<%--											</div>--%>
<%--										</a>--%>
<%--									</li>--%>
									</ul>
									<div class="btns">
										<a href="javascript:void(0)" onclick="showMoreContent(this);" class="btn-type_round hover-eff center" id="showMore"><span>View more</span></a>
									</div>
								</div>

								<!-- 탭2: 동아 ST 지속가능경영보고서 -->
								<div class="synthesis-report-panel" data-panel="st-sustainability" role="tabpanel">
									<p class="title-s3">The Dong-A ST Sustainability Report provides transparent disclosure of Dong-A ST's sustainability management activities and performance.</p>
									<ul class="synthesis-report-list">
										<li class="synthesis-report-item">
											<a href="/asset/files/management/donga_st_sustainability_report_2025_en.pdf" download="Dong-A_ST_Sustainability_Report_2025_EN.pdf">
												<div class="thumb">
													<img src="/asset/images/management/synthesis_report_st_2025_en.png" alt="2025 Dong-A ST Sustainability Report (English)" />
												</div>
												<div class="content">
													<span class="text-2">Sustainability Report</span>
													<strong class="title-s3">2025 Dong-A ST Sustainability Report (English)<br />(Jan. 1, 2025~Dec. 31, 2025)</strong>
												</div>
											</a>
										</li>
										<li class="synthesis-report-item">
											<a href="/asset/files/management/donga_st_sustainability_report_2025_ko.pdf" download="동아ST_지속가능경영보고서_2025_국문.pdf">
												<div class="thumb">
													<img src="/asset/images/management/synthesis_report_st_2025_ko.png" alt="2025 Dong-A ST Sustainability Report (Korean)" />
												</div>
												<div class="content">
													<span class="text-2">Sustainability Report</span>
													<strong class="title-s3">2025 Dong-A ST Sustainability Report (Korean)<br />(Jan. 1, 2025~Dec. 31, 2025)</strong>
												</div>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</main>
    <!-- 페이지 관련 스크립트 -->
<script>

	var itemsToShow=4; //초기불러올값 4
	var addItems=4;	//추가불러올값 4

	$(document).ready(function() {
		var $integratedPanel = $('.synthesis-report-panel[data-panel="integrated"]');
		var $integratedList = $integratedPanel.find('.synthesis-report-list');

		// 탭 전환
		$('.synthesis-report-tab-list .tab-item button').on('click', function () {
			var tab = $(this).data('tab');
			$('.synthesis-report-tab-list .tab-item').removeClass('on');
			$('.synthesis-report-tab-list .tab-item button').attr('aria-selected', 'false');
			$(this).closest('.tab-item').addClass('on');
			$(this).attr('aria-selected', 'true');
			$('.synthesis-report-panel').removeClass('on');
			$('.synthesis-report-panel[data-panel="' + tab + '"]').addClass('on');
		});

		// 기존 AJAX — 통합보고서 탭만
		var url = "/en/management/synthesisReportListAjax";
		$.ajax({
			url: url,
			type: 'post',
			contentType : 'application/json; charset=utf-8',
			dataType: 'json',
			async: false,
			success: function(r) {
				$integratedList.html(r.html);

				$integratedList.find('.synthesis-report-item:gt('+(itemsToShow-1)+')').hide();
				if(itemsToShow < $integratedList.find('.synthesis-report-item').length){
					$("#showMore").parent().show();
				}else{
					$("#showMore").parent().hide();
				}

			},
			error: function (r) {
			}
		});
	});

	function showMoreContent(element){
		var $integratedList = $('.synthesis-report-panel[data-panel="integrated"] .synthesis-report-list');
		itemsToShow += addItems;
		$integratedList.find('.synthesis-report-item').slice(0,itemsToShow).show();
		var content = $(element).parent();
		if(itemsToShow >= $integratedList.find('.synthesis-report-item').length){
			content.hide();
		}else{
			content.show();
		}
	}

	$(function() {
		//탭
		let tabScrSetT;
		$('.page-menu-list .tab-item').on('click', function() {
			cssToggle('.tab-item', '.section-contents', $(this).index());
			clearTimeout(tabScrSetT);
			scrollMove($('.csr-activity').offset().top, 300, (function() {
				tabScrSetT = setTimeout(function() {
					$('html').removeClass('scr-up');
					$('html').addClass('scr-down');
					$('.page-menu-list').removeClass('hidden');
				}, 300);
			}));
			return false;
		});

		//갤러리
		$('.gallery-swiper').each(function() {
			new slideStart($(this));
		});
	});
</script>
    <!--//페이지 관련 스크립트 -->
