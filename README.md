# codex-claude-config

Personal portable configuration for Codex and Claude workflows.

This repository stores safe, source-controlled configuration only. It should not
contain local auth files, logs, sqlite state, plugin caches, sessions, attachments,
or other runtime data.

## Contents

- `rules/` - portable Codex user rules.
- `claude/` - portable Claude user instructions.
- `install.ps1` - copies Codex rules into `%USERPROFILE%\.codex\rules`
  and Claude instructions into `%USERPROFILE%\.claude`.

## Install

From this repository:

```powershell
.\install.ps1
```

## Source Of Truth

When a portable Codex/Claude rule is added locally, mirror it here, commit it, and
push it to GitHub.

When a rule applies to both tools, keep Codex and Claude local runtime config in
sync before committing and pushing this repository.
