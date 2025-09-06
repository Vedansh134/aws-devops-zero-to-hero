#!/bin/bash
set -euo pipefail

# Example: stop containers created from a specific image
image_name="kvedansh786/simple-python-flask-app"

container_ids=$(docker ps -q --filter ancestor="${image_name}")

if [[ -n "${container_ids}" ]]; then
  echo "Stopping containers for image ${image_name}: ${container_ids}"
  docker stop ${container_ids}
  docker rm -f ${container_ids}
else
  echo "No containers found for image ${image_name}."
fi
