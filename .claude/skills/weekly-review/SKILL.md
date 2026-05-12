---
name: weekly-review
description: Run Robert's weekly PARA vault review. Use when he says "weekly review", "plan my week", "weekly planning", or makes similar requests to review the past week and plan ahead against his Obsidian vault at ~/vault.
---

# Weekly Review

Run a structured weekly review against Robert's PARA vault at `~/vault`. If you need conventions (frontmatter fields, status values, folder rules), read `~/vault/_system/PARA-conventions.md`.

## Steps

1. **Clear**: scan `0-Inbox/` and the last 7 daily notes in `0-Inbox/Daily/` for unprocessed items.
2. **Review projects**: walk all active projects in `1-Projects/` — flag stale, stuck, or completable ones.
3. **Review areas**: check `2-Areas/` — confirm standards are being maintained.
4. **Reflect**: surface wins, friction, patterns, and any unsummarized session transcripts in `3-Resources/Sessions/Claude/`.
5. **Plan**: top 3 priorities for the coming week, upcoming deadlines, capacity check.
6. Create Monday's daily note from `Templates/Daily Note.md`, pre-filling the date and any carry-forward tasks or notes from the review.

After the review, offer to save a session transcript (the `session-transcript` skill handles that) if the conversation was substantial.
