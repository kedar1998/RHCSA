#!/bin/bash
# grading.sh – Auto-grade Project Workspace assignment (Root User)

SCORE=0
echo "==== Grading Assignment ===="

# 1. Check project directory
if [ -d "/root/project" ]; then
  echo "[OK] project directory exists"
  SCORE=$((SCORE+5))
else
  echo "[FAIL] project directory missing"
fi

# 2. Check subfolders
for d in docs src archive; do
  if [ -d "/root/project/$d" ]; then
    echo "[OK] $d exists"
    SCORE=$((SCORE+5))
  else
    echo "[FAIL] $d missing"
  fi
done

# 3. Check files
if [ -f "/root/project/docs/readme.txt" ] || [ -f "/root/project/archive/readme.txt" ]; then
  echo "[OK] readme.txt present"
  SCORE=$((SCORE+5))
else
  echo "[FAIL] readme.txt missing"
fi

if [ -f "/root/project/docs/notes.txt" ] || [ -f "/root/project/docs/project_notes.txt" ]; then
  echo "[OK] notes/project_notes present"
  SCORE=$((SCORE+5))
else
  echo "[FAIL] notes/project_notes missing"
fi

# 4. Check Java files
JAVA_COUNT=$(ls /root/project/src/code*.java 2>/dev/null | wc -l)
if [ "$JAVA_COUNT" -eq 10 ]; then
  echo "[OK] 10 Java files"
  SCORE=$((SCORE+10))
else
  echo "[FAIL] Expected 10 Java files, found $JAVA_COUNT"
fi

# 5. Check summary in /tmp
if [ -f "/tmp/summary.txt" ]; then
  echo "[OK] summary.txt copied to /tmp"
  SCORE=$((SCORE+5))
else
  echo "[FAIL] summary.txt missing in /tmp"
fi

echo "----------------------------"
echo "Total Score: $SCORE / 50"
