---
title: "Leaving a mark"
date: 2026-09-27 18:52:43 -0500
categories: [Dev Diary, Weapons]
tags: [weapons, effects, animation, decals]
description: "Blast marks that match the surface, consistent shot origins and better attack poses."
# image:
#   path: /assets/img/posts/2026-09-27-leaving-a-mark.png   # 1200x630 social preview
---

<!-- Source: L2 PR #28. First pass generated from the file changes; edit freely. -->
## Blast marks

Projectiles with an impact effect now leave a blast mark, and as in the original the mark
depends only on the surface it hit: stone, wood, metal, dirt and so on, read from the
original surface data. Marks last until the end of the round, and past a limit the
oldest one is reused, as most shooters do.

## Where shots start

Each weapon type now has its own starting point for its projectiles, shared by every
character. Move it once and every character with that weapon type follows.

## Better attack poses

- **Upper-body attacks no longer twist the hips.** Attacks play on the upper body only,
  over whatever the legs are doing. The original attacks turn the hips and counter-twist
  the spine, which looked wrong when only the upper half played. The converted attacks
  now hold the hips still and let the spine do the turning.
- **Idles faced the wrong way.** Every idle stance came out turned left in game. Fixed
  at conversion.
- **Weapons stay in stance while moving.** The character now holds its weapon stance on
  the upper body while walking, running, crouching or jumping, instead of falling back to
  a generic run.

<!-- SCREENSHOT: blast marks on stone, wood and metal -->
