#!/bin/bash

set -e
set -o pipefail

failTest=false

TEST_SUITE_ID="$1"
AUTH_TOKEN="$2"
WORKSPACE_DIR="${3:-$(pwd)}"
BRANCH_NAME="${4:-main}"
COMMIT_NAME="${5:-latest}"
LOCALHOST_URL="http://localhost:80"
TEST_CASES_PATH="$WORKSPACE_DIR/tests/testRigor/testcases/**/*.txt"
RULES_PATH="$WORKSPACE_DIR/tests/testRigor/rules/**/*.txt"
H_AUTH_TOKEN="auth-token: $AUTH_TOKEN"
echo "Running testRigor tests..."
echo "Workspace: $WORKSPACE_DIR"
echo "Test Suite ID: $TEST_SUITE_ID"

npx testrigor-cli test-suite run "$TEST_SUITE_ID" --token "$AUTH_TOKEN" --localhost --url "$LOCALHOST_URL" --test-cases-path "$TEST_CASES_PATH" --rules-path "$RULES_PATH" --explicit-mutations

if $failTest; then
    exit 1
fi