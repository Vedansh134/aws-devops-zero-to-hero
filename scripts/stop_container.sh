#!/bin/bash
set -euo pipefail

# Ensure docker is available
if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is not installed or not in PATH." >&2
  exit 127
fi

# Get all running container IDs
containers=$(docker ps -q)

if [[ -n "$containers" ]]; then
  echo "Stopping containers: $containers"
  docker stop $containers
  docker rm -f $containers
else
  echo "No running containers to stop."
fi
