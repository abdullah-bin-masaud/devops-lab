#!/bin/bash
set -e

echo "=== STARTING AUTOMATED TEST SUITE ==="

# Test 1: Check if index.html exists
if [ ! -f "index.html" ]; then
    echo "❌ TEST 1 FAILED: index.html not found!"
    exit 1
fi
echo "✅ TEST 1 PASSED: index.html exists."

# Test 2: Check for essential HTML structure
if ! grep -q "<html>" index.html || ! grep -q "</html>" index.html; then
    echo "❌ TEST 2 FAILED: Missing valid <html> tags!"
    exit 1
fi
echo "✅ TEST 2 PASSED: HTML structure is valid."

# Test 3: Check for required H1 header
if ! grep -q "<h1>" index.html; then
    echo "❌ TEST 3 FAILED: Critical <h1> header is missing!"
    exit 1
fi
echo "✅ TEST 3 PASSED: System online header detected."

echo "=== ALL TESTS PASSED SUCCESSFULLY ==="
exit 0
