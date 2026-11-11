---
title: "Pickup items and shooters"
date: 2026-11-01 03:40:53 -0600
categories: [Dev Diary, Maps]
tags: [maps, pickups, shooters, projectiles, world objects]
description: "Items placed in the map, and the traps that fire at you."
# image:
#   path: /assets/img/posts/2026-11-01-pickups-and-shooters.png   # 1200x630 social preview
---

<!-- Source: L2 PR #65. First pass generated from the file changes; edit freely. -->
- **Pickup items** placed in maps, and an inventory item type, now work.
- **Shooters** fire a projectile along their facing every set number of seconds while on. They
  can be switched on and off by triggers, and each shot does the shooter's own damage.
- A splash effect was fixed.
- Map object overrides were added to the converter.

<!-- CLIP: a wall trap firing as you cross a corridor -->
