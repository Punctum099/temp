<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/jsp/_cmm/directives.jsp" %>
<c:set var="realURL" value="${requestScope['javax.servlet.forward.request_uri']}"/>
            <a href="/kr/page/donga/HRF102010" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102010')>-1}"> active</c:if>">동아쏘시오홀딩스</a>
            <a href="/kr/page/donga/HRF102020" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102020')>-1}"> active</c:if>">동아ST</a>
            <a href="/kr/page/donga/HRF102030" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102030')>-1}"> active</c:if>">동아제약</a>
            <a href="/kr/page/donga/HRF102040" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102040')>-1}"> active</c:if>">에스티팜</a>
            <a href="/kr/page/donga/HRF102050" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102050')>-1}"> active</c:if>">비티젠</a>
            <a href="/kr/page/donga/HRF102060" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102060')>-1}"> active</c:if>">동아참메드</a>
            <a href="/kr/page/donga/HRF102070" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102070')>-1}"> active</c:if>">동아오츠카</a>
            <%-- 수석/동천수 합병에 따라 숨김처리 (동아에코팩으로 통합) --%>
            <%-- <a href="/kr/page/donga/HRF102080" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102080')>-1}"> active</c:if>">동천수</a> --%>
            <a href="/kr/page/donga/HRF102140" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102140')>-1}"> active</c:if>">동아에코팩</a>
            <a href="/kr/page/donga/HRF102090" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102090')>-1}"> active</c:if>">용마로지스</a>
            <%-- <a href="/kr/page/donga/HRF102100" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102100')>-1}"> active</c:if>">수석</a> --%>
            <a href="/kr/page/donga/HRF102110" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102110')>-1}"> active</c:if>">한국신동공업</a>
            <a href="/kr/page/donga/HRF102120" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102120')>-1}"> active</c:if>">디에이아이</a>
            <a href="/kr/page/donga/HRF102130" data-element="navElement" class="group-company__link swiper-slide <c:if test="${fn:indexOf(realURL,'/HRF102130')>-1}"> active</c:if>">아벤종합건설</a>
<script>
    $(document).ready(function(){
        $('.link-box  .text').click(function(){
            location.href=$(this).closest('a').attr('href');
            //$(this).closest('a').click();
        })
    })
</script>
