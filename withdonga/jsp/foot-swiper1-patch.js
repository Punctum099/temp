// foot.jsp — swiper1 (.main-slide) 교체용
// 왼쪽 살짝 보임: slidesPerView 3 + CSS opacity/display 조합이 원인
var swiper1 = new Swiper(".main-slide", {
    slidesPerView: 1,
    slidesPerGroup: 1,
    spaceBetween: 16,
    speed: 500,
    threshold: 20,
    loop: true,
    breakpoints: {
        721: {
            slidesPerView: 3,
            slidesPerGroup: 1,
            spaceBetween: 40,
        },
    },
});
