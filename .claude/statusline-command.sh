#!/bin/sh
input=$(cat)
cwd=$(echo "$input" | jq -r '.workspace.current_dir // .cwd // ""')
model=$(echo "$input" | jq -r '.model.display_name // ""')
used=$(echo "$input" | jq -r '.context_window.used_percentage // empty')

dir=$(basename "$cwd")

# Bright cyan for directory, bright yellow for model name
if [ -n "$used" ]; then
  # Color-code context usage: green < 50%, yellow 50-80%, red > 80%
  if [ "$used" -ge 80 ] 2>/dev/null; then
    ctx_color="\033[91m"   # bright red
  elif [ "$used" -ge 50 ] 2>/dev/null; then
    ctx_color="\033[93m"   # bright yellow
  else
    ctx_color="\033[92m"   # bright green
  fi
  printf "\033[96m%s\033[0m  \033[93m%s\033[0m  \033[97mctx:\033[0m ${ctx_color}%s%%\033[0m" "$dir" "$model" "$used"
else
  printf "\033[96m%s\033[0m  \033[93m%s\033[0m" "$dir" "$model"
fi
