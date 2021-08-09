#!/usr/bin/env bash

set -e

echo "Generating index..."
OWNER="jleski"
GIT_REPO="helm-charts"
CHARTS_REPO_URL="https://jleski.github.io/helm-charts"
cr index --config ~/.cr.yaml -i "./index.yaml" -p "./.deploy" --owner "${OWNER}" --git-repo "${GIT_REPO}" --charts-repo "${CHARTS_REPO_URL}"

