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
6. **Reconcile daily notes against project state.** Walk today's daily note (already read in Step 4) plus the most recent prior daily note — typically yesterday's, but broaden the window across weekends, holidays, and any stretch where reviews were skipped. For each project mentioned in those notes (Work Log, Captures, inline `> Update:` blockquotes, end-of-day notes), open the corresponding `_project.md`. If the daily note describes work not reflected there (Log entry, completed task, status change, updated `next-action`), propose the edit and apply on approval. Bump `updated:` on any project file you touch. Goal: no project file more than 24 hours behind reality after a daily review.
7. Walk Robert through: inbox triage → project review → tomorrow's priority. When summarizing today's progress, cite the daily note's `## Work Log` and `## Tasks` sections specifically — completed work captured there is easy to overlook if you only scan tasks at a glance.
8. Mark the `End-of-Day Check` in today's daily note as completed once addressed.
9. Create tomorrow's daily note from the `Templates/Daily Note.md` template, pre-filling the date and any carry-forward tasks or notes from today's review. **Skip this on Fridays** — daily notes are overkill on weekends.
