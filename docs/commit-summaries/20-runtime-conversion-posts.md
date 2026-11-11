# Add posts for runtime conversion work (L2 PRs #36-#40 and the props branch)

- **Commit:** `f412acf`  
- **Date:** 2026-10-13  
- **Author:** Claude

## Summary
Five posts documenting the shift to building the game from the player's own install at runtime, so no converted content ships.

## What changed
- ***Art from your own install*** (PR #36): `L2Assets` folder, pack files with an index, path-based lookup (loose files override packs), PCX to PNG with cyan transparency, a conversion report. UI art loads by path; ~350 images deleted from the project. Two early bugs: white buttons and a 10-second gallery pause.
- ***Textures and materials, built on the fly*** (PR #37): all DTX textures converted; materials are data records with keys (texture path plus options); template materials keep shader variants; effect textures and model/skin tables generated; ABC and DAT readers added.
- ***Sounds and music*** (PR #38): ~1,470 sounds in a pack, chunk-by-chunk WAV reading, `ContentAudio` component, music copied unchanged for now; map conversion plan written up.
- ***Reading the original archives*** (PR #39): REZ archive reader with layered resolution order, path normalisation, music decoded with the NLayer MP3 decoder.
- ***Props, torches and moving textures*** (props branch): models converted per piece; placement rules measured across all 20 maps; original-style world-aligned collision; invisible tree/cot collider variants moved onto models; flames decoded from the game binary; scrolling textures scaled correctly; transparency fixes.

## Why it matters
Removes the need to redistribute converted content and sets up the pipeline for maps.

## Notes
- 5 posts, ~310 lines. Merged via PR #4.

## Media

<!-- SCREENSHOT / VIDEO: add here -->
