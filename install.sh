#!/usr/bin/env bash

# Copied from https://github.com/mathiasbynens/dotfiles/blob/main/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

if [ -d ".git" ]; then
  git pull origin master;
fi;

echo 'Installing dotfiles...';
rsync --exclude ".git/" \
  --exclude ".DS_Store" \
  --exclude ".osx" \
  --exclude "bootstrap.sh" \
  --exclude "README.md" \
  --exclude "LICENSE-MIT.txt" \
  --exclude ".claude/settings.json" \
  -avh --no-perms . ~;
source ~/.profile;

# Bash-specific setup: source custom bashrc and symlink .aliases to .bash_aliases
if [ -n "$BASH_VERSION" ]; then
  if ! grep -qF '.bashrc_cyu' ~/.bashrc 2>/dev/null; then
    echo 'source ${HOME}/.bashrc_cyu' >> ~/.bashrc;
  fi

  ln -sf "${HOME}/.aliases" "${HOME}/.bash_aliases"
fi

# Zsh-specific setup: source custom zshrc
if [ -n "$ZSH_VERSION" ]; then
  if ! grep -qF '.zshrc_cyu' ~/.zshrc 2>/dev/null; then
    echo 'source ${HOME}/.zshrc_cyu' >> ~/.zshrc;
  fi
fi

# Merge .claude/settings.json (local file values take precedence)
CLAUDE_SETTINGS_SRC="$(dirname "${BASH_SOURCE}")/.claude/settings.json"
CLAUDE_SETTINGS_DEST="${HOME}/.claude/settings.json"
if [ -f "$CLAUDE_SETTINGS_SRC" ]; then
  mkdir -p "${HOME}/.claude"
  if [ -f "$CLAUDE_SETTINGS_DEST" ]; then
    # Deep merge: dotfiles as base, local settings override
    jq -s '.[0] * .[1]' "$CLAUDE_SETTINGS_SRC" "$CLAUDE_SETTINGS_DEST" > "${CLAUDE_SETTINGS_DEST}.tmp" \
      && mv "${CLAUDE_SETTINGS_DEST}.tmp" "$CLAUDE_SETTINGS_DEST"
  else
    cp "$CLAUDE_SETTINGS_SRC" "$CLAUDE_SETTINGS_DEST"
  fi
fi

