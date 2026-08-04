# CLAUDE.md — Global Instructions

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

## 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:

-   State your assumptions explicitly. If uncertain, ask.
-   If multiple interpretations exist, present them - don't pick silently.
-   If a simpler approach exists, say so. Push back when warranted.
-   If something is unclear, stop. Name what's confusing. Ask.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

-   No features beyond what was asked.
-   No abstractions for single-use code.
-   No "flexibility" or "configurability" that wasn't requested.
-   No error handling for impossible scenarios.
-   If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:

-   Don't "improve" adjacent code, comments, or formatting.
-   Don't refactor things that aren't broken.
-   Match existing style, even if you'd do it differently.
-   If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:

-   Remove imports/variables/functions that YOUR changes made unused.
-   Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:

-   "Add validation" → "Write tests for invalid inputs, then make them pass"
-   "Fix the bug" → "Write a test that reproduces it, then make it pass"
-   "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:

```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

## 5. Backlog Lives in Issues, Not Prose

**When a plan closes or a review parks a deferred item, file it as a GH issue — not as a bullet in a project doc, vault note, or SDD ledger.** Prose captures rot; issues have lifecycle, labels, and discoverability.

Rules:

-   **Actionable-shaped observation → GH issue, at surface time.** Includes: parked minors from reviews, deferred items from a plan close, follow-up work called out during a spec/brainstorm. Body carries the receipt — file:line, current behavior, proposed fix, filing context ("surfaced during v0.X final review, not a v0.X blocker").
-   **Arc, synthesis, decision-with-reasoning, or lightweight context → project doc.** Project docs are for narrative — the "why" behind a release theme, session shape, lessons — not for tracking work items.
-   **Milestones happen at scoping time, not filing time.** Backlog issues stay unmilestoned. When a brainstorm decides a release's theme, it selects from the labeled backlog and attaches issues to a milestone it just created. Pre-attaching an issue to a hypothetical future milestone commits work that hasn't been scoped, and creates zombie milestones for releases that never happen.
-   **Project docs' info callouts list issue numbers with one-line hooks, not prose bullets.** The callout is a nav aid pointing to the authoritative surface (the issue tracker), not a duplicate of it.

**Concrete application — SDD closures.** The `superpowers:subagent-driven-development` skill's ledger accumulates a "deferred minors" bucket during the task loop. At plan close, graduate each entry to a GH issue with labels; do not carry the list forward into the project doc as prose. The ledger's job ended when the plan closed.

The failure mode this prevents: parked minors get captured in prose, the entry gets buried, and no one (including future you) surfaces them at the next brainstorm because they weren't in the issue tracker where scoping happens.

---

## Obsidian PARA Vault

I maintain a PARA-based Second Brain in Obsidian at `~/vault`. You have read/write access. Conventions (folder structure, frontmatter, naming) live in `~/vault/_system/PARA-conventions.md` — read it when working in the vault.

Workflows are implemented as skills, which load on demand:

-   `daily-review` — daily inbox/project triage
-   `weekly-review` — weekly clear/review/reflect/plan
-   `memory-write` — persist session context to `2-Areas/Agent Memory/Claude/`
-   `session-transcript` — archive substantial sessions to `3-Resources/Sessions/Claude/`

**Material actions on a project require a same-session `_project.md` update.** If a session ships an artifact, makes an external commitment (email, message, decision shared with a stakeholder), changes status, or invalidates `next-action`, proactively offer to log it before ending. Don't wait for daily review to catch it — the propagation gap is a known failure mode.

## Quadient HTML Artifacts

When building a **Quadient work or customer-facing HTML artifact** (reports, slides, solution summaries, spec sheets — anything representing Quadient or shown to a partner/customer), style it with the canonical Quadient brand theme at `~/.claude/assets/quadient-theme.css`:

-   **Inline** the theme into the artifact's own `<style>` — do NOT `<link>` it. These artifacts must survive print-to-PDF, email, offline/air-gapped transfer, and the claude.ai Artifact CSP, none of which tolerate an external stylesheet.
-   Read the file each time (it is the source of truth and may have been updated) and follow the brand rules encoded in its header comment: grey-dominant, orange as accent only (never body text; orange text/links use `#CC3400`), no ALL-CAPS headings, minimal letter-spacing, and **never recreate the Quadient logo** — use `.q-logo-slot` for the official asset.
-   Fonts resolve via the theme's Calibri-led fallback stack (self-contained, no web-font requests).

**Do NOT** auto-apply this to personal/vault visualizations, quick data viz, or throwaway tooling HTML — only to Quadient communications. When unsure whether an artifact is "Quadient-facing," ask.

The theme is versioned (`v2026.0`, synced from the 2026 Brand Guidelines). If the guidelines change, update the one canonical file and bump its version stamp; new artifacts pick it up automatically.
