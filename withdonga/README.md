# 위드동아 (with.donga.co.kr)

## 모바일 INSIDE 슬라이더 수정

### 문제
- 모바일에서 INSIDE는 3개씩, PEOPLE은 1개씩 노출되어 카드 크기가 불균형

### 원인
- `@media (max-width: 720px)` 구간에서 INSIDE(`.main-slide`) 슬라이드가 `16.75rem` 고정 너비 → 화면에 3개가 동시에 보임
- PEOPLE(`.people-slide`)은 모바일에서 `width: 100%`, 비활성 슬라이드 `opacity: 0` 처리

### CSS 수정 (`style.css` — `@media (max-width: 720px)`)

- 슬라이드 `width: 100%` 유지
- **`opacity: 0` / `display: none` 제거** — 이 방식이 슬라이드 애니메이션을 막음

### JS 수정 (필수)

`js/main-slide-swiper.js` 참고. `.main-slide` Swiper 초기화에 아래를 반영:

| 옵션 | 모바일(0~720) | 설명 |
|------|---------------|------|
| `slidesPerView` | `1` | 1장씩 |
| `slidesPerGroup` | `1` | 한 장씩 넘김 (3이면 점프) |
| `speed` | `500` | 전환 애니메이션 |
| `threshold` | `20` | 살짝 스와이프 시 오작동 방지 |

```javascript
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
}
```
