#!/usr/bin/env bash
set -euo pipefail
PORT=8000
python3 -m http.server "$PORT" &
SERVER_PID=$!
trap "kill $SERVER_PID" EXIT
sleep 1
open "http://localhost:$PORT"
wait $SERVER_PID
