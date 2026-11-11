---
title: "Monster pathing and navmesh sizes"
date: 2026-11-09 21:45:31 -0600
categories: [Dev Diary, Monsters]
tags: [monsters, navmesh, ai, pathing]
description: "Navigation meshes for each size of actor, and fixes for monsters that got stuck."
# image:
#   path: /assets/img/posts/2026-11-09-monster-pathing-and-navmesh-sizes.png   # 1200x630 social preview
---

<!-- Source: L2 PRs #64 and #84. First pass generated from the file changes; edit freely. -->
Monsters come in all sizes, and a path that works for a goblin doesn't work for a titan.

- **Several navigation meshes per map**, one per actor size, baked by the host. An actor
  takes the first size its box fits.
- **Fallbacks.** The small mesh is the route a bigger actor follows to a target it can't
  reach.
- **Leaks.** A leak of navigation agents was fixed earlier in the week.
- Pathing fixes in the brains, and notes written up on what's still to do (baking only on the
  host and skipping bakes when monsters are off).

<!-- CLIP: monsters of several sizes walking through the same doorway -->
