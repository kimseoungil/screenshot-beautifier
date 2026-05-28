#!/bin/bash
# 기존 서버 종료
lsof -ti:8765 | xargs kill -9 2>/dev/null

# 서버 백그라운드 실행
nohup python3 "$(dirname "$0")/server.py" > /tmp/beautifier.log 2>&1 &

# 서버 뜰 때까지 대기
sleep 1.2

# 브라우저 열기
open http://localhost:8765/screenshot-beautifier.html
