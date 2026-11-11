---
title: "Water and lava, round two"
date: 2026-11-03 08:50:17 -0600
categories: [Dev Diary, Movement]
tags: [water, lava, swimming, rendering, damage]
description: "Underwater shaders, fog and tint, field-of-view changes, lava damage and breath."
# image:
#   path: /assets/img/posts/2026-11-03-water-and-lava-round-two.png   # 1200x630 social preview
---

<!-- Source: L2 PR #81. First pass generated from the file changes; edit freely. -->
The swimming post ended with a to-do list. Most of it is done.

- **Underwater look.** The shaders, fog and tint were reworked, with a fog pass of their own.
  Surface transparency and animation now match the original.
- **Liquid effects.** Your field of view shifts as you go in and out of water.
- **Lava damage.** Lava hurts, and lava protection works.
- **Breath and drowning.** Drowning damage uses its own flat rate, never reduced by armor.
- **Weapons on death.** A dead player's weapon is tossed properly.
- **Surface grid.** The water surface is a shared grid used by water and lava.
- **Water edges.** The last item, standing at the edge of the water, was crossed off. The
  return was too small to be worth chasing.

<!-- CLIP: diving into water and lava -->
