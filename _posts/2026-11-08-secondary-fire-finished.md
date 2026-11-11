---
title: "Secondary fire, finished"
date: 2026-11-08 14:34:01 -0600
categories: [Dev Diary, Weapons]
tags: [weapons, secondary fire, projectiles, effects, magic]
description: "Every remaining secondary attack: charge, homing, guided arrows, beams and more."
# image:
#   path: /assets/img/posts/2026-11-08-secondary-fire-finished.png   # 1200x630 social preview
---

<!-- Source: L2 PR #82. First pass generated from the file changes; edit freely. -->
Every weapon now has its secondary fire. The earlier post listed four gaps. They're closed:

- **Gatling Crossbow:** charge fire.
- **Tracking Crossbow:** homing.
- **Eye Bow:** a guided arrow, flown from your own first-person view.
- **Ice Bow, Death Blossom Bow:** their secondaries.
- **Charge Rod, Flare Rod and Rod of Souls:** with new visuals, a new light for the flare and
  a flying skull.
- **Wand:** the held beam.
- **Fire Ring Staff and Staff of Sparking.**
- **Gravity Axe:** the magnet.
- **Roosters** appear on a map, a new critter.

## Under the hood

Steered projectiles got their own view, hit-scan beams their own visual, and dynamic lights a
new rendering pass so weapon lights show on surfaces.

<!-- CLIP: a montage of every secondary fire -->
