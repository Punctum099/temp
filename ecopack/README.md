# 동아에코팩 소스 보관

## CSS 구조 (실서버)

프로젝트 내 CSS는 **static 하위 3개 파일**만 사용합니다.

| 파일 | 역할 |
|------|------|
| `static/common.css` | 공통 + 페이지별 스타일 통합 (management 포함) |
| `static/guide.css` | 가이드 |
| `static/library.css` | 라이브러리 |

> `management.css`, `main.css`는 **별도 파일로 존재하지 않음**.  
> 인권경영·환경경영 스타일은 모두 `common.css` 안에 포함되어 있습니다.

## 인권경영·환경경영 주석(.text-5) 수정

- 표 본문: `.table-type-a { font-size: 1.6rem; }` (common.css 약 1962행)
- `.text-5` 클래스는 기본 정의 없음 → 주석이 작게 보임
- **수정 위치**: `common.css` 맨 아래

```css
/* 인권경영·환경경영 — 표 하단 주석(.text-5) 글씨 크기를 표 내부와 동일하게 */
.management-humanright .esg-table .text-5,
.management-humanright .plank-cont > .text-5,
.management-environmental .esg-table .text-5,
.management-environmental .plank-cont > .text-5 {
  font-size: 1.6rem;
  line-height: 1.75;
  color: var(--basic);
}

@media screen and (max-width: 766px) {
  .management-humanright .esg-table .text-5,
  .management-humanright .plank-cont > .text-5,
  .management-environmental .esg-table .text-5,
  .management-environmental .plank-cont > .text-5 {
    font-size: 1.4rem;
  }
}
```

## JSP

- `jsp/human_members.jsp` — 인권경영 (구성원 다양성)
- `jsp/environmental.jsp` — 환경경영
