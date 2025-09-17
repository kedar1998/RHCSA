#!/bin/bash
# grading.sh – Auto-grade Text Editing & Viewing Assignment

SCORE=0
echo "==== Grading Assignment ===="

# 1. Check files
if [ -f "/root/story.txt" ]; then
  echo "[OK] story.txt exists"
  SCORE=$((SCORE+5))
else
  echo "[FAIL] story.txt missing"
fi

if [ -f "/root/data.csv" ]; then
  echo "[OK] data.csv exists"
  SCORE=$((SCORE+5))
else
  echo "[FAIL] data.csv missing"
fi

# 2. Check story line count
LINES=$(wc -l < /root/story.txt 2>/dev/null)
if [ "$LINES" -ge 15 ]; then
  echo "[OK] story.txt has $LINES lines"
  SCORE=$((SCORE+10))
else
  echo "[FAIL] story.txt should have at least 15 lines (found $LINES)"
fi

# 3. Check CSV format (comma separated)
if grep -q "," /root/data.csv 2>/dev/null; then
  echo "[OK] data.csv contains commas"
  SCORE=$((SCORE+5))
else
  echo "[FAIL] data.csv missing comma-separated values"
fi

# 4. Check wc output basics
BYTES=$(wc -c < /root/story.txt 2>/dev/null)
if [ "$BYTES" -gt 0 ]; then
  echo "[OK] wc byte count valid"
  SCORE=$((SCORE+5))
else
  echo "[FAIL] wc byte count not valid"
fi

# 5. Check grep usage (search evidence)
if grep -q ".*" /root/story.txt 2>/dev/null; then
  echo "[OK] story.txt searchable"
  SCORE=$((SCORE+5))
else
  echo "[FAIL] Could not verify grep usage"
fi

echo "----------------------------"
echo "Total Score: $SCORE / 35"
