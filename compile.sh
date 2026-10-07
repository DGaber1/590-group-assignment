#!/usr/bin/env bash
# Build the TeX Live image and compile a LaTeX file (default: hello.tex).
set -euo pipefail

TEX_FILE="${1:-hello.tex}"

docker build -t latex-docker .
docker run --rm -v "$PWD":/work latex-docker "$TEX_FILE"

echo "Built ${TEX_FILE%.tex}.pdf"
