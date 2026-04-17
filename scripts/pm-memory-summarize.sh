#!/bin/bash
# End-of-day memory summarization for PM Agent
# Run via /schedule or cron at end of day (11:59pm)
#
# What it does:
# 1. Checks if today's memory file exists and has content
# 2. Appends today's date header to MEMORY.md
# 3. Copies today's entries to MEMORY.md
# 4. Deletes daily files older than 7 days
# 5. Trims MEMORY.md to 200 lines (the auto-load limit)

MEMORY_DIR="$HOME/.claude/agent-memory/pm-agent"
MEMORY_INDEX="$MEMORY_DIR/MEMORY.md"
TODAY=$(date +%Y-%m-%d)
TODAY_FILE="$MEMORY_DIR/$TODAY.md"

# Exit if no memory directory
if [ ! -d "$MEMORY_DIR" ]; then
  echo "No memory directory found at $MEMORY_DIR"
  exit 0
fi

# Exit if no daily file or empty (just the header)
if [ ! -f "$TODAY_FILE" ]; then
  echo "No daily memory file for $TODAY"
  exit 0
fi

LINE_COUNT=$(wc -l < "$TODAY_FILE")
if [ "$LINE_COUNT" -le 1 ]; then
  echo "Daily file for $TODAY has no entries (only header)"
  exit 0
fi

# Create MEMORY.md if it doesn't exist
if [ ! -f "$MEMORY_INDEX" ]; then
  echo "# PM Agent — Memory Index" > "$MEMORY_INDEX"
  echo "" >> "$MEMORY_INDEX"
fi

# Append today's entries to MEMORY.md (skip the header line)
echo "" >> "$MEMORY_INDEX"
echo "## $TODAY" >> "$MEMORY_INDEX"
tail -n +2 "$TODAY_FILE" >> "$MEMORY_INDEX"

# Delete daily files older than 7 days
find "$MEMORY_DIR" -name "????-??-??.md" -mtime +7 -delete 2>/dev/null

# Trim MEMORY.md to 200 lines (keep most recent — bottom of file)
if [ $(wc -l < "$MEMORY_INDEX") -gt 200 ]; then
  tail -200 "$MEMORY_INDEX" > "$MEMORY_INDEX.tmp"
  # Ensure it starts with the header
  echo "# PM Agent — Memory Index" > "$MEMORY_INDEX"
  echo "" >> "$MEMORY_INDEX"
  cat "$MEMORY_INDEX.tmp" >> "$MEMORY_INDEX"
  rm "$MEMORY_INDEX.tmp"
fi

echo "Memory summarized for $TODAY. Daily files older than 7 days pruned."
