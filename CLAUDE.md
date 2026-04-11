# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

Personal macOS dotfiles for photography, design, and development, managed via [dotbot](https://github.com/anishathalye/dotbot). Running `bash install` from the repo root sets up a fresh macOS machine end-to-end.

## Installation

```bash
bash install
```

This sequentially runs dotbot against each step config in `steps/`:

1. `macos.yml` — Xcode CLT, Oh-My-Zsh + plugins, directory creation, symlinks, macOS defaults. Creates `~/.zshrc` as a real file (not a symlink) that sources `configs/zshrc` and `~/.zshrc.local`.
2. `homebrew.yml` — Homebrew installation + all packages from `homebrew/Brewfile`
3. `iterm.yml` — iTerm2 dynamic profile symlink
4. `vscode.yml` — VSCode settings symlink + extension installation via `vscode/install.sh`
5. `javascript.yml` — Removes old Node managers (Volta, fnm), installs Node LTS via mise, sets up corepack
6. `complete.yml` — Prints post-install instructions

To run a single step:

```bash
./dotbot/bin/dotbot -d . --plugin-dir dotbot-brewfile -c steps/homebrew.yml
```

## Architecture

### Symlinks (managed by dotbot `link` directives)

- `configs/zprofile` → `~/.zprofile`
- `configs/gitconfig` → `~/.gitconfig`
- `configs/gitignore` → `~/.gitignore`
- `configs/ssh_config` → `~/.ssh/config`
- `configs/claude_doc` → `~/.claude/claude.md`
- `configs/claude_settings` → `~/.claude/settings.json`
- `configs/vscode` → `~/Library/Application Support/Code/User/settings.json`
- `configs/iterm` → `~/Library/Application Support/iTerm2/DynamicProfiles/my-profile.json`

### Key Tool Choices

- **mise** — Runtime version manager (replaces Volta/fnm). Activated via `eval "$(mise activate zsh)"` in `.zshrc`.
- **corepack** — Manages npm/pnpm/yarn versions per project.
- **Oh-My-Zsh** with plugins: `git`, `node`, `zsh-autosuggestions`, `zsh-syntax-highlighting`

### Adding Homebrew Packages

Edit `homebrew/Brewfile`. Commented-out lines are work-specific packages intentionally excluded from this personal setup.

### Adding VSCode Extensions

Edit `vscode/install.sh` — each extension is installed with the full `code --install-extension` call using the extension ID.

### Adding macOS Defaults

Edit `macos/install.sh` — uses `defaults write` commands.

## Security Note

`configs/zshrc` previously contained a hardcoded `GITHUB_PERSONAL_ACCESS_TOKEN`. If you see this in the file, revoke the token at https://github.com/settings/tokens and remove it — use a secrets manager or `~/.zshrc.local` (not tracked in git) for credentials instead.
