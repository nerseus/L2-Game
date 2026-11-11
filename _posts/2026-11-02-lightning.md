---
title: "Lightning"
date: 2026-11-02 20:00:46 -0600
categories: [Dev Diary, Art]
tags: [lightning, weather, effects, maps, damage]
description: "Animated lightning strikes with damage."
# image:
#   path: /assets/img/posts/2026-11-02-lightning.png   # 1200x630 social preview
---

<!-- Source: L2 PR #80. First pass generated from the file changes; edit freely. -->
Storms on a map now have lightning.

- A **lightning** object draws the bolts, with several layers and a width shape.
- Lightning can **damage** what it hits, using the damage volume rules.
- It's networked and goes through the map's world settings.

<!-- CLIP: lightning over a map -->
