#!/bin/bash

# Install testRigor CLI
npm install -g testrigor-cli

# Define suite ID and auth token in .env file
# OPENEMR_TEST_SUITE_ID=<your_suite_id>
# OPENEMR_AUTH_TOKEN=<your_suite_auth_token>
source tests/Tests/E2e/testRigor/.env

# Define the following 
LOCALHOST_URL="http://localhost:8300/"

# Paths for the test cases and rules files
TEST_CASES_PATH="./testcases/**/*.txt"
RULES_PATH="./rules/**/*.txt"

# Command to run the tests using the testRigor CLI
testrigor test-suite run "$OPENEMR_TEST_SUITE_ID" --token "$OPENEMR_AUTH_TOKEN" --localhost --url "$LOCALHOST_URL" --test-cases-path "$TEST_CASES_PATH" --rules-path "$RULES_PATH"