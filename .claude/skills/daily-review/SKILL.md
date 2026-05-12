---
name: daily-review
description: Run Robert's daily PARA vault review. Use when he says "daily review", "process my inbox", "what should I work on today", "review my day", or makes similar requests for inbox triage and project review against his Obsidian vault at ~/vault.
---

# Daily Review

Run a structured daily review against Robert's PARA vault at `~/vault`. If you need conventions (frontmatter fields, status values, folder rules), read `~/vault/_system/PARA-conventions.md`.

## Steps

1. Scan `0-Inbox/` (excluding `Daily/`) for unprocessed captures.
2. Read active projects from `1-Projects/` (frontmatter `status: active`).
3. Flag stale projects (`updated` 7+ days ago).
4. Read today's daily note in full at `0-Inbox/Daily/YYYY-MM-DD.md`. Even if earlier system-reminders this session showed parts of it, re-read now — Robert often updates `Work Log` and `Tasks` throughout the day, and the diffs you saw earlier may be stale.
5. Read the latest entry in `2-Areas/Agent Memory/Claude/`.
6. Walk Robert through: inbox triage → project review → tomorrow's priority. When summarizing today's progress, cite the daily note's `## Work Log` and `## Tasks` sections specifically — completed work captured there is easy to overlook if you only scan tasks at a glance.
7. Mark the `End-of-Day Check` in today's daily note as completed once addressed.
8. Create tomorrow's daily note from the `Templates/Daily Note.md` template, pre-filling the date and any carry-forward tasks or notes from today's review. **Skip this on Fridays** — daily notes are overkill on weekends.
