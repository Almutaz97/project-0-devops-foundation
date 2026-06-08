#!/usr/bin/env bash

set -euo pipefail

echo "DevOps Doctor"
echo "-------------"

echo "User: $(whoami)"
echo "Directory: $(pwd)"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"

ROOT_USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Root disk usage: ${ROOT_USAGE}%"

if [ "$ROOT_USAGE" -ge 80 ]; then
  echo "Disk status: WARNING - root disk usage is above 80%"
else
  echo "Disk status: OK"
fi

echo "-------------"
echo "Checking required commands..."

if command -v git >/dev/null 2>&1; then
  echo "Git command: FOUND"
else
  echo "Git command: MISSING"
fi

if command -v docker >/dev/null 2>&1; then
  echo "Docker command: FOUND"
else
  echo "Docker command: MISSING"
fi

if systemctl is-active --quiet docker; then
  echo "Docker service: ACTIVE"
else
  echo "Docker service: NOT ACTIVE"
fi

echo "-------------"
echo "Overall check completed"
