<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/WEB-INF/jsp/_cmm/directives.jsp"%>
<main role="main" class="management">
  <div id="container">
    <section class="management-synthesis-report">
      <div class="section-head">
        <div class="section-inner">
          <div class="text-wrap">
            <h2 class="main-title">
              <strong>통합보고서</strong>
            </h2>
            <p class="sub-title text-1">
              동아쏘시오그룹 다양한 이해관계자들에게<br />
              지속가능경영에 대한 성과를 투명하게 공개하고, 기업의 종합적 가치를 제시하겠습니다.
            </p>
          </div>
          <div class="head-img">
            <div class="img img-1">
              <img src="/asset/images/management/management.png" alt="" />
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
                  <button type="button" role="tab" aria-selected="true" data-tab="integrated">동아쏘시오그룹 '가마솥' 통합보고서</button>
                </li>
                <li class="tab-item" role="presentation">
                  <button type="button" role="tab" aria-selected="false" data-tab="st-sustainability">동아 ST 지속가능경영보고서</button>
                </li>
              </ul>
            </div>

            <div class="synthesis-report-panel on" data-panel="integrated" role="tabpanel">
              <p class="title-s3">동아쏘시오그룹 '가마솥' 통합보고서는<br />그룹의 재무, 비재무 성과와 사회책임 이행을 위한 노력을 투명하게 공개하고,<br />이해관계자들과 소통하기 위한 보고서입니다.</p>
              <ul class="synthesis-report-list"></ul>
              <div class="btns">
                <a href="javascript:void(0)" onclick="showMoreContent(this);" class="btn-type_round hover-eff center" id="showMore"><span>더 보기</span></a>
              </div>
            </div>

            <div class="synthesis-report-panel" data-panel="st-sustainability" role="tabpanel">
              <p class="title-s3">동아 ST 지속가능경영보고서는<br />동아 ST의 지속가능경영 활동과 성과를 투명하게 공개하는 보고서입니다.</p>
              <ul class="synthesis-report-list">
                <li class="synthesis-report-item">
                  <a href="/asset/files/management/donga_st_sustainability_report_2025_ko.pdf" download="동아ST_지속가능경영보고서_2025_국문.pdf">
                    <div class="thumb">
                      <img src="/asset/images/management/synthesis_report_st_2025_ko.png" alt="2025 동아 ST 지속가능경영보고서 (국문)" />
                    </div>
                    <div class="content">
                      <span class="text-2">지속가능경영보고서</span>
                      <strong class="title-s3">2025 동아 ST 지속가능경영보고서 (국문)<br />(2025.01.01~2025.12.31)</strong>
                    </div>
                  </a>
                </li>
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
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</main>

<script>
  var itemsToShow = 4;
  var addItems = 4;

  $(document).ready(function () {
    var $integratedPanel = $('.synthesis-report-panel[data-panel="integrated"]');
    var $integratedList = $integratedPanel.find('.synthesis-report-list');

    $('.synthesis-report-tab-list .tab-item button').on('click', function () {
      var tab = $(this).data('tab');
      $('.synthesis-report-tab-list .tab-item').removeClass('on');
      $('.synthesis-report-tab-list .tab-item button').attr('aria-selected', 'false');
      $(this).closest('.tab-item').addClass('on');
      $(this).attr('aria-selected', 'true');
      $('.synthesis-report-panel').removeClass('on');
      $('.synthesis-report-panel[data-panel="' + tab + '"]').addClass('on');
    });

    $.ajax({
      url: '/kr/management/synthesisReportListAjax',
      type: 'post',
      contentType: 'application/json; charset=utf-8',
      dataType: 'json',
      async: false,
      success: function (r) {
        $integratedList.html(r.html);
        $integratedList.find('.synthesis-report-item:gt(' + (itemsToShow - 1) + ')').hide();
        if (itemsToShow < $integratedList.find('.synthesis-report-item').length) {
          $('#showMore').parent().show();
        } else {
          $('#showMore').parent().hide();
        }
      }
    });
  });

  function showMoreContent(element) {
    var $integratedList = $('.synthesis-report-panel[data-panel="integrated"] .synthesis-report-list');
    itemsToShow += addItems;
    $integratedList.find('.synthesis-report-item').slice(0, itemsToShow).show();
    if (itemsToShow >= $integratedList.find('.synthesis-report-item').length) {
      $(element).parent().hide();
    }
  }
</script>
