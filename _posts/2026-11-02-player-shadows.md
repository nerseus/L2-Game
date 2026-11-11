---
title: "Player shadows"
date: 2026-11-02 09:01:57 -0600
categories: [Dev Diary, Art]
tags: [shadows, rendering, decals, characters]
description: "A soft shadow under every character, using the original's own settings."
# image:
#   path: /assets/img/posts/2026-11-02-player-shadows.png   # 1200x630 social preview
---

<!-- Source: L2 PR #75. First pass generated from the file changes; edit freely. -->
Characters had no shadow. Now each one has a dark disc projected straight down onto the world,
sized from the settings in the character's own data.

- It's a **decal projector**, projected onto world geometry only.
- The fade is the original's, getting lighter toward the edge.
- Warlords get a shadow too. A typo in the original's data meant theirs never showed.

<!-- SCREENSHOT: a character's shadow on grass and stone -->
