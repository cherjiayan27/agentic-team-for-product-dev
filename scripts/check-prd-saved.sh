#!/bin/bash
# Stop hook for PM Agent
# Checks if PRD content was discussed but not saved
#
# How it works:
# - SessionStart hook creates a state file marking "no PRD work yet"
# - This script reads the transcript to check if Write/Edit was used on a PRD file
# - If PRD-related discussion happened but no PRD file was written, block the stop
#
# Input: JSON on stdin with session_id, transcript_path, cwd

INPUT=$(cat)
TRANSCRIPT=$(echo "$INPUT" | jq -r '.transcript_path // empty')
CWD=$(echo "$INPUT" | jq -r '.cwd // empty')

# If no transcript available, let it pass
if [ -z "$TRANSCRIPT" ] || [ ! -f "$TRANSCRIPT" ]; then
  exit 0
fi

# Check if any Write or Edit was used on a prd file during this session
PRD_SAVED=$(grep -c '"file_path".*prd' "$TRANSCRIPT" 2>/dev/null || echo "0")

# Check if PRD-related content was discussed (problem statement, strategic alignment, user stories, roadmap)
PRD_DISCUSSED=$(grep -cE '(problem statement|strategic alignment|user stor|roadmap|out of scope|success metric|hypothesis)' "$TRANSCRIPT" 2>/dev/null || echo "0")

# If PRD was discussed but not saved — block
if [ "$PRD_DISCUSSED" -gt 0 ] && [ "$PRD_SAVED" -eq 0 ]; then
  echo "PRD content was discussed but not saved to a file. Save the PRD before ending the session." >&2
  exit 2
fi

# Otherwise, let it pass
exit 0
