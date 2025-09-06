#!/bin/bash
set -euo pipefail

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is not installed or not in PATH." >&2
  exit 127
fi

docker pull kvedansh786/simple-python-flask-app
docker run -d -p 5000:5000 kvedansh786/simple-python-flask-app
