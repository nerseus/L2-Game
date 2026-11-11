---
title: "Wind and soft landings"
date: 2026-11-02 08:41:18 -0600
categories: [Dev Diary, Maps]
tags: [maps, wind, movement, buy zones]
description: "Wind that carries players, landing zones that cancel fall damage, and a buy zone fix."
# image:
#   path: /assets/img/posts/2026-11-02-wind-and-soft-landings.png   # 1200x630 social preview
---

<!-- Source: L2 PR #74. First pass generated from the file changes; edit freely. -->
The Blood Feud catapult needed two new volumes.

- **Wind** carries players while on, and keeps the speed when you leave so you're thrown on.
  It can be switched on, off or toggled.
- **Soft landing zones** do no damage when you land inside them.
- **Buy zones** now count when any part of the player's box overlaps, as the original tests it.

<!-- CLIP: riding the catapult -->
