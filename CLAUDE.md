# screenshot-beautifier 프로젝트

## 프로젝트 개요
스크린샷을 예쁘게 꾸며주는 로컬 전용 웹 툴. 단일 HTML 파일로 동작.

## 파일 구조
- `screenshot-beautifier.html` — 메인 파일 (전체 앱)
- `.git/hooks/post-commit` — 커밋 시 옵시디언 자동 기록 훅

## GitHub
- 저장소: https://github.com/kimseoungil/screenshot-beautifier
- 계정: kimseoungil

## 워크플로우
사용자가 기능 수정을 요청하면:
1. `screenshot-beautifier.html` 수정
2. 한글로 커밋 메시지 작성 후 커밋 + push
3. post-commit 훅이 자동으로 옵시디언 일기에 기록

**별도로 "커밋해줘" 요청 없어도 수정 후 자동으로 커밋까지 진행할 것.**

## 커밋 규칙
- 메시지는 항상 **한글**로 작성
- 예: `이미지 삭제 버튼 우측 상단으로 이동`

## 옵시디언 연동
- 일기 폴더: `~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Study/일기/`
- 프로젝트 노트: `~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Study/프로젝트/screenshot-beautifier.md`
- 커밋 시 오늘 일기에 자동 기록, 형식:
  ```
  [[screenshot-beautifier]]
  14:28 - 단일 이미지 모드에 이미지 삭제 버튼 추가
  15:02 - 이미지 로드 시 체커 배경 숨김 처리
  ```
- `screenshot-beautifier.md` 개발 기록에 날짜 링크도 자동 추가

## 주요 기능 현황
- 단일 이미지 / 콜라주 모드 (2~4장, 가로·세로 배열)
- 이미지 자르기 (크롭 모달)
- 배경: 그라디언트 12종 / 단색 / 투명
- 캔버스 비율: Free / 16:9 / 4:3 / 1:1
- 스타일: 패딩, 모서리, 그림자, 이미지 크기, 이미지 간격
- 텍스트: 타이틀 (크고 굵은 셋로그 스타일) / 워터마크 (서브타이틀)
- 이미지 삭제: 프리뷰 우측 상단 X 버튼
- 다크/라이트 테마 토글
- 사이드바 접기/펼치기
- PNG 저장
- 클립보드 붙여넣기 지원
