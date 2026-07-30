<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/jsp/_cmm/directives.jsp" %>
<div id="content" class="content HRF102140">
  <div class="group-company__top">
    <div class="inner" onload-class="transition-side">
      <h2 class="name">동아에코팩</h2>
      <p class="description">
        <span class="line">친환경 포장에서 건강한 식음료까지,</span>
        <span class="line">사람과 지구를 위한 토탈 솔루션 기업 동아에코팩</span>
      </p>
      <p class="description mobile">
        <span class="line">친환경 포장에서 건강한 식음료까지,</span>
        <span class="line">사람과 지구를 위한 토탈 솔루션 기업</span>
        <span class="line">동아에코팩</span>
      </p>
      <a
        href="https://www.donga-ecopack.com/"
        target="_blank"
        title="새창"
        class="shortcut-link"
        >사이트 바로가기</a
      >
    </div>
  </div>

  <div class="group-company__list" data-element="scrollNav">
    <div class="inner">
      <div class="list-wrap group-company__swiper swiper">
        <div class="link-box swiper-wrapper" data-element="linkBox">
          <%@ include file="groupNavi.jsp" %>
        </div>
        <div class="navigation-wrapper">
          <button type="button" class="swiper-button-prev">
            <span class="ir">이전</span>
          </button>
          <button type="button" class="swiper-button-next">
            <span class="ir">다음</span>
          </button>
        </div>
      </div>
    </div>
  </div>

  <div class="group-company__introduce">
    <div class="inner">
      <div class="introduce" scroll-class="transition-rise scroll-current">
        <div class="introduce__img-wrap">
          <!-- 최상단/좌측 이미지: 「반출」수석.jpg (기존 수석 이미지 경로 사용, CI 변경 이미지 회신 후 교체) -->
          <img
            src="/assets/images/HRF102010/group-company_img010.png"
            alt=""
            class="img"
          />
        </div>
        <div class="introduce__right">
          <h3 class="title">동아에코팩</h3>
          <p class="description">
            동아에코팩의 ‘Eco’는 Excellence(탁월함), Economy(경제성), Ecology(친환경) 를 담고 있습니다.<br />
            지속 가능한 성장과 사회적 책임, 환경의 가치를 고려한 우리의 사명은,
            앞으로 나아갈 길을 밝혀주는 나침반입니다.
          </p>
          <dl class="information">
            <!-- 2줄인 경우 class="information__item--full"로 한번 더 감싸주세요 -->
            <div class="information__item--full">
              <div class="information__item">
                <dt class="information__title">주요 업무</dt>
                <dd class="information__description">
                  병유리, 금속제품, CAP, PET, 골판지 상자, 생수, 탄산수, 탄산·혼합음료
                </dd>
              </div>
              <div class="information__item">
                <dt class="information__title">채용 문의</dt>
                <dd class="information__description">s3180705@donga.co.kr</dd>
              </div>
            </div>
            <div class="information__item">
              <dt class="information__title">주소</dt>
              <dd class="information__description">
                <div class="information__sub-item">
                  <div class="sub-item">
                    <strong class="sub-item__title">본사(글라스공장)</strong>
                    <span class="sub-item__description"
                      >충청남도 당진시 합덕읍 인더스파크로 131</span
                    >
                  </div>
                  <div class="sub-item">
                    <strong class="sub-item__title">플라텍공장</strong>
                    <span class="sub-item__description"
                      >충청남도 당진시 합덕읍 인더스파크로 21</span
                    >
                  </div>
                  <div class="sub-item">
                    <strong class="sub-item__title">칼라팩공장</strong>
                    <span class="sub-item__description"
                      >충청남도 당진시 합덕읍 인더스파크로 20</span
                    >
                  </div>
                  <div class="sub-item">
                    <strong class="sub-item__title">상주공장</strong>
                    <span class="sub-item__description"
                      >경상북도 상주시 헌신산단로 67</span
                    >
                  </div>
                  <div class="sub-item">
                    <strong class="sub-item__title">속리산공장</strong>
                    <span class="sub-item__description"
                      >경상북도 상주시 화북면 문장로 1623-32</span
                    >
                  </div>
                  <div class="sub-item">
                    <strong class="sub-item__title">가야산공장</strong>
                    <span class="sub-item__description"
                      >경상남도 합천군 묘산면 영서로 1724-12</span
                    >
                  </div>
                </div>
              </dd>
            </div>
          </dl>
        </div>
      </div>
      <!--//introduce-->
      <div class="btnWrap" scroll-class="transition-rise scroll-current">
        <div class="inner">
          <p class="btn-center">
            <a href="https://with.donga.co.kr/kr/search/searchResult?searchText=%EB%8F%99%EC%95%84%EC%97%90%EC%BD%94%ED%8C%A9" class="btn-link" target="_blank">
              <span>회사 소식 </span>
            </a>
          </p>
        </div>
      </div>
      <!--// btnWrap 250527 -->
      <div class="misson-vision" scroll-class="transition-rise scroll-current">
        <h3 class="title">MISSION & VISION</h3>
        <ol class="misson-vision__list">
          <li class="misson-vision__item">
            <span class="number">01</span><strong class="category">비전</strong>
            <div class="description">
              철저한 품질시스템을 기반으로 정직한 음료 제공과 환경 가치 실현
            </div>
          </li>
          <li class="misson-vision__item">
            <span class="number">02</span
            ><strong class="category">핵심가치</strong>
            <div class="description">
              지속 가능성 - 제품의 품질은 물론, 비용절감과 ESG 경영 실천을 통해 장기적인 시장 경쟁력을 확보<br />
              고객 신뢰 - 고도화된 품질 관리 체계를 통한 브랜드 이미지 제고 및 고객 신뢰 견고화<br />
              혁신 - 품질, 안전, 지속가능성을 하나로 묶은 "혁신"을 추구
            </div>
          </li>
          <li class="misson-vision__item">
            <span class="number">03</span
            ><strong class="category">실행지침</strong>
            <div class="description">
              부서 간 유기적인 협동을 통해 생산효율 극대화<br />
              회사와 함께 성장하는 구성원들과 조직시스템의 발전<br />
              유해성분을 배제한 친환경적인 제품 생산<br />
              성장뿐만 아니라 지구의 미래를 생각하는 기술 개발<br />
              발생 가능성이 있는 위험을 사전에 식별 및 관리하여 안전의 완벽화
            </div>
          </li>
        </ol>
      </div>
    </div>
  </div>

  <div class="group-company__benefit benefit">
    <div class="inner" scroll-class="transition-rise scroll-current">
      <h3 class="title">복리후생</h3>
      <!-- 기존 수석 복리후생 사용 -->
      <div class="benefit__list" scroll-class="transition-rise scroll-current">
        <div class="benefit__item">
          <strong class="benefit__keyword">LIFE</strong>
          <div class="keyword-list">
            <span class="keyword-item">사내 대출</span>
            <span class="keyword-item">기숙사 지원</span>
            <span class="keyword-item">주택구입대출</span>
            <span class="keyword-item">사내동호회 운영</span>
            <span class="keyword-item">사내근로복지기금 운영</span>
          </div>
        </div>
        <div class="benefit__item">
          <strong class="benefit__keyword">HEALTH</strong>
          <div class="keyword-list">
            <span class="keyword-item">건강검진</span>
            <span class="keyword-item">상해보험</span>
            <span class="keyword-item">체력단력실 운영</span>
          </div>
        </div>
        <div class="benefit__item">
          <strong class="benefit__keyword">FAMILY</strong>
          <div class="keyword-list">
            <span class="keyword-item">자녀학자금</span>
            <span class="keyword-item">리조트 회원권</span>
            <span class="keyword-item">결혼/자녀출산 축하금 지급</span>
            <span class="keyword-item">상조서비스</span>
          </div>
        </div>
        <div class="benefit__item">
          <strong class="benefit__keyword">REFRESH</strong>
          <div class="keyword-list">
            <span class="keyword-item">리조트 지원</span>
            <span class="keyword-item">장기 근속 포상</span>
            <span class="keyword-item">정년퇴직자 포상</span>
            <span class="keyword-item">회사창립기념 포상</span>
          </div>
        </div>
        <div class="benefit__item">
          <strong class="benefit__keyword">CAREER</strong>
          <div class="keyword-list">
            <span class="keyword-item">우수사원 제도</span>
            <span class="keyword-item">자격증 취득비 및 교육비 지원</span>
          </div>
        </div>
      </div>
    </div>
  </div>

  <%@ include file="groupJicgun.jsp" %>

  <div class="floating-bar" data-element="scrollNav">
    <div class="list-wrap floating__swiper swiper">
      <div class="link-box swiper-wrapper" data-element="linkBox">
        <%@ include file="groupNaviText.jsp" %>
      </div>
    </div>
    <div class="navigation-wrapper">
      <button type="button" class="swiper-button-prev" data-button="prev">
        <span class="ir">이전</span>
      </button>
      <button type="button" class="swiper-button-next" data-button="next">
        <span class="ir">다음</span>
      </button>
    </div>
  </div>
</div>
