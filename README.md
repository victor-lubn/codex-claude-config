# codex-claude-config

Personal portable configuration for Codex and Claude workflows.

This repository stores safe, source-controlled configuration only. It should not
contain local auth files, logs, sqlite state, plugin caches, sessions, attachments,
or other runtime data.

## Contents

- `rules/` - portable Codex user rules.
- `install.ps1` - copies rules into `%USERPROFILE%\.codex\rules`.

## Install

From this repository:

```powershell
.\install.ps1
```

## Source Of Truth

When a portable Codex/Claude rule is added locally, mirror it here, commit it, and
push it to GitHub.
