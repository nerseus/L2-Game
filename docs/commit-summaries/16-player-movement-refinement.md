# Refine player movement to match original game mechanics

- **Commit:** `d37b33c`  
- **Date:** 2026-10-08  
- **Author:** DJ

## Summary
Rewrites parts of the movement post to reflect what was learned matching the original's feel.

## What changed
- Removed claims that the original had no sprint, and trimmed the Also list (key handling, jump recorder, clip placeholder).
- Coyote-time note simplified.
- New **Issues** section:
  - The original used a **cylinder** for player collision and an **axis-aligned box** for ground checks, found by trial and error and by comparing with similar engines of the era.
  - Unity no longer supports cylinder colliders. Workaround: **8 rotated box colliders forming a 32-sided prism**, accurate to a few cm.
  - Side effect: players can snag between two boxes at some corners where a true cylinder would glance off.
  - Ground-check quirk on the Wedding Day map: jumping beside a diagonal wall makes the square check catch diagonal blocks, so the player "hovers". Needed extra tweaks.
- Adds a movement YouTube video.

## Notes
- 12 lines added, 9 removed.

## Media

<!-- SCREENSHOT / VIDEO: add here -->
