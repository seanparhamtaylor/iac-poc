#!/bin/sh

# Function to escape newlines and quotes for JSON
escape_json() {
    printf '%s' "$1" | sed 's/\\/\\\\/g' | sed 's/"/\\"/g' | sed ':a;N;$!ba;s/\n/\\n/g'
}

cat <<EOF
{
  "GITHUB_APP_ID": "$GITHUB_APP_ID",
  "GITHUB_APP_PEM_FILE": "$(escape_json "$GITHUB_APP_PEM_FILE")",
  "GITHUB_APP_INSTALLATION_ID": "$GITHUB_APP_INSTALLATION_ID"
}
EOF
