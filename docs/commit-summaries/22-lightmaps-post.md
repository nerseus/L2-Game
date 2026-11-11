# Add lightmaps post (L2 PR #42)

- **Commit:** `9a16c68`  
- **Date:** 2026-10-14  
- **Author:** Claude

## Summary
New post on the custom lightmap baker.

## What changed
- ***Lighting the world: lightmaps*** (~100 lines), with a video of the baker being built and the `brightness` and `lmfullbright` console commands.
- **How it works:** lights read as data (point, glow, directional, sun, model-only); ambient sets the floor; contributions add, clamp and multiply into the texture.
- **Matching the original:** falloff fitted against the original's vertex colours; simple inner-to-outer fade fits best (within a few to ~18 levels).
- **Beyond the original:** soft partial shadows, multi-ray smooth edges, round glows, tree-trunk shadow brushes, six selectable falloff curves.
- **Bake times:** 1, 2 and 3 shadow samples take 82 s, 287 s and 605 s.
- **In game:** world lit by lightmaps only; characters and props use real lights; brightness slider; animated water sprite sheets.
- **Next:** character/prop lighting (likely a baked grid), torch light, lightmaps on doors, animated lights, comparisons with the original.

## Notes
- 102 lines added. Merged via PR #5.

## Media

<!-- SCREENSHOT / VIDEO: add here -->
