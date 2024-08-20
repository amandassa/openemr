#!/bin/bash

# Define suite ID and auth token
TEST_SUITE_ID=""
AUTH_TOKEN=""
LOCALHOST_URL="http://localhost:8300/"

# Paths for the test cases and rules files
TEST_CASES_PATH="./test_cases/**/*.txt"
RULES_PATH="./rules/**/*.txt"

# Command to run the tests using the testRigor CLI
testrigor test-suite run "$TEST_SUITE_ID" --token "$AUTH_TOKEN" --localhost --url "$LOCALHOST_URL" --test-cases-path "$TEST_CASES_PATH" --rules-path "$RULES_PATH"