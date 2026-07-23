/**
 * 위드동아 메인 INSIDE 슬라이더 (.main-slide)
 *
 * 기존 초기화 코드를 찾아 아래 옵션을 반영하세요.
 * (파일 위치 예: common.js, main.js, index.jsp 하단 등)
 *
 * 증상: 살짝만 넘겨도 애니메이션 없이 바로 다음 슬라이드로 점프
 * 원인: CSS opacity/display 숨김 + slidesPerView/slidesPerGroup 불일치
 */

// 예시 — 기존 new Swiper('.main-slide', { ... }) 를 이 형태로 수정
const mainSlideSwiper = new Swiper('.main-slide', {
  slidesPerView: 3,
  slidesPerGroup: 1,
  spaceBetween: 20,
  speed: 500,
  threshold: 20,
  longSwipesRatio: 0.35,
  resistanceRatio: 0.85,
  watchOverflow: true,
  navigation: {
    nextEl: '.main-slide .swiper-button-next',
    prevEl: '.main-slide .swiper-button-prev',
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
      slidesPerGroup: 1,
      spaceBetween: 16,
    },
    721: {
      slidesPerView: 3,
      slidesPerGroup: 1,
      spaceBetween: 20,
    },
  },
});

// PC에서 slidesPerView: 'auto' 를 쓰는 경우 721 breakpoint 예시:
// 721: { slidesPerView: 'auto', spaceBetween: 20 }
