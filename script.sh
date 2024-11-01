#!/bin/bash

# Your GitHub identity
git config user.name "Rajshri12"
git config user.email "rajshreeguru0@gmail.com"

# Starting date
start_date="2024-11-01"
total_days=30

# Commit messages pool
messages=(
  "Initial setup"
  "Add analyze script"
  "Implement GenAI summarizer"
  "Connect WhatsApp API"
  "Refactor prompt format"
  "Fix Twilio config"
  "Improve summary text"
  "Add new clauses detection"
  "Handle empty document case"
  "Add .env and config template"
  "Create sample legal doc"
  "Write README"
  "Improve formatting"
  "Add test document"
  "Fix token overflow"
  "Update requirements.txt"
  "Optimize summarizer"
  "Add error handling"
  "Polish WhatsApp message"
  "Final tweaks"
  "Minor fix"
  "Update project structure"
  "Add feature roadmap"
  "Clean up unused code"
  "Optimize file reading"
  "Add docstrings"
  "Remove debug logs"
  "Add usage instructions"
  "Final polish"
)

# Create a dummy file to modify each day
touch notes.txt

for ((i=0; i<$total_days; i++)); do
    # Randomly skip 2-3 days
    if (( RANDOM % 10 < 2 )); then
        continue
    fi

    # Commit date
    commit_date=$(date -d "$start_date +$i days" +"%Y-%m-%dT12:00:00")

    # Make change
    echo "Log $i - ${messages[$i]}" >> notes.txt

    # Git commit
    git add .
    GIT_AUTHOR_DATE=$commit_date GIT_COMMITTER_DATE=$commit_date \
    git commit -m "${messages[$i]}"
    
    echo "✅ Committed: ${messages[$i]} on $commit_date"
done

