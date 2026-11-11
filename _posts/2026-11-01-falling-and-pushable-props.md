---
title: "Falling and pushable props"
date: 2026-11-01 19:12:31 -0600
categories: [Dev Diary, Maps]
tags: [maps, props, physics, doors, multiplayer]
description: "Crates that fall when what holds them up is destroyed, and props you can push."
# image:
#   path: /assets/img/posts/2026-11-01-falling-and-pushable-props.png   # 1200x630 social preview
---

<!-- Source: L2 PR #70. First pass generated from the file changes; edit freely. -->
- **Falling props.** Solid destructible props with gravity fall when what's holding them up
  breaks. The crates at the Wedding Day entrance now collapse as they should.
- **Pushable props** move when you walk into them, at the prop's own push speed.
- **Doors push props** out of the way, and carry what's stacked on them.
- Positions are networked so every player sees the same thing.

<!-- CLIP: knocking out the bottom crate of a stack -->
