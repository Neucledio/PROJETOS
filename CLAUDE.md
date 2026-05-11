# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Workspace Overview

This is a learning/experimentation workspace. It contains no build systems, test frameworks, or package managers.

## GitHub Repository

This workspace is tracked at **https://github.com/Neucledio/PROJETOS** (branch `main`).

After every file edit or creation, a hook automatically runs `.claude/auto-commit.ps1`, which:
1. Stages all changes (`git add .`)
2. Creates a timestamped commit (`auto: YYYY-MM-DD HH:mm:ss`)
3. Pushes to `origin main`

The hook runs asynchronously in the background — no action needed after edits.

## Projects

- **TESTES/** — A git-tracked sandbox repository used for practicing git workflows (commits, reverts, etc.). Tracked as a git submodule pointing to `https://github.com/Neucledio/TESTE.git`.
- **MENTE/** — Empty directory, reserved for future work.

## Git

- Root repo remote: `https://github.com/Neucledio/PROJETOS.git`
- `TESTES/` is a submodule with its own remote at `https://github.com/Neucledio/TESTE.git`
- Auto-commit hook is configured in `.claude/settings.json` and the script is at `.claude/auto-commit.ps1`
