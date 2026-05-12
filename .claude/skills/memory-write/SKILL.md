---
name: memory-write
description: Write a daily memory entry to Robert's PARA vault Agent Memory folder. Use when he says "write memory", "save what we learned", "memory write", or asks to persist context from the current session for future Claude sessions.
---

# Memory Write

Persist context from the current session to Robert's vault so future Claude sessions can pick up where this one left off.

## Action

- Create or update `~/vault/2-Areas/Agent Memory/Claude/YYYY-MM-DD.md` (today's date).
- Use the `Templates/Memory Write.md` template as a starting structure.
- Include:
  - **Context carried forward** — what we were working on and where it stands
  - **Preferences learned** — anything new about how Robert wants to work
  - **Decisions made** — choices that should not be revisited
  - **Stale / superseded** — anything in prior memory entries that's now outdated

If the file for today already exists, append rather than overwrite. Conventions (frontmatter, status values) are in `~/vault/_system/PARA-conventions.md` if needed.
