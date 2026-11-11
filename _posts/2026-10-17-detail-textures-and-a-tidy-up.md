---
title: "Detail textures and a tidy-up"
date: 2026-10-17 15:08:45 -0500
categories: [Dev Diary, Art]
tags: [textures, menus, tools, cleanup]
description: "Detail textures, a menu and debugging tool pass, and a round of map prop fixes."
# image:
#   path: /assets/img/posts/2026-10-17-detail-textures-and-a-tidy-up.png   # 1200x630 social preview
---

<!-- Source: L2 PRs #43 and #44. First pass generated from the file changes; edit freely. -->
Two small changes after the lightmaps: a pass on the editor tools, and a batch of fixes that
had piled up.

## Detail textures

Some of the original's textures carry a **detail texture**, a second, fine-grained layer that
shows up when you stand close to a surface and stops the world looking smeared. The header
settings were already read during conversion. Now they're used.

- Detail textures are applied in the map's materials.
- A **detail textures** setting is in the video options and saved with the others, so it can
  be turned off on slower machines.
- The default lightmap size was adjusted.

<!-- SCREENSHOT: a wall up close, detail textures on and off -->

## Fixes

- Props that sat in the wrong place on two maps: shields on Stoneham and a crate in the Hideout.
- Skeleton cages that hung wrongly on Temple of Bark.
- More water cleanup, not finished yet. Water gets its own post later.
- Compiler warnings cleaned up.

## Tools

The conversion menu and the debugging menus in the editor were reorganised so the common
steps (convert, re-convert, test) are quicker to reach.
