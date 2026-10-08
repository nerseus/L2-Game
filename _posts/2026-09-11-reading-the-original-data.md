---
title: "Reading the original data"
date: 2026-09-11 19:16:55 -0500
categories: [Dev Diary, Tools]
tags: [data, tools, weapons]
description: "The original game's data tables come in, so numbers come from the source."
# image:
#   path: /assets/img/posts/2026-09-11-reading-the-original-data.png   # 1200x630 social preview
---

<!-- Source: L2 PR #16. First pass generated from the file changes; edit freely. -->
The original game kept most of its numbers in plain text tables. Those are now in L2:

- **Weapons, projectiles, damage and armor**
- **Player classes:** health, walk, run, jump and swim speeds
- **Characters and monsters**, with each character's attachment points
- **Pickups, spells, treasure and spawns**
- Game text, server text and credits

A generator turns each table into code, working out from the values which columns are
numbers, true/false values or text. Weapons and players can now read their stats from
the original data instead of hand-copied values.

## Also in this change

- **Crouching shrinks the collision capsule** as well as the animation, so you can get
  under things.
- **The project was reorganised:** L2's own scripts moved into their own folder, and
  every change to the template's code is now marked in place and listed in a change log,
  so the template can be updated later without losing track.
