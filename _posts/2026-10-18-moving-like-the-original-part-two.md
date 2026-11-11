---
title: "Moving like the original, part two"
date: 2026-10-18 12:26:25 -0500
categories: [Dev Diary, Movement]
tags: [movement, jumping, slopes, swimming, ladders, physics]
description: "A big rewrite of player movement to follow the original's rules for jumps, slopes, ladders, water and the player's box."
# image:
#   path: /assets/img/posts/2026-10-18-moving-like-the-original-part-two.png   # 1200x630 social preview
---

<!-- Source: L2 PR #45. First pass generated from the file changes; edit freely. -->
The first movement pass got close. This one gets the details right. It's one of the biggest
single changes so far, and most of it is about **writing down how the original behaved, then
matching it**.

<!-- CLIP: add YouTube embed here -->

## What changed

- **A new mover.** Player movement now runs through one purpose-built mover that follows the
  original's rules rather than the engine's character controller.
- **Jumps.** Jump height, falling speed and the moment you leave the ground follow the
  original's numbers. Coyote time (jumping just after walking off an edge) is its own small
  component.
- **Slopes.** What you can stand on, what you slide down and how steep is too steep now match.
- **Ladders.** Climbing, stepping on and off, and what happens when you jump away.
- **Swimming.** Entering, leaving and moving in water follow the same rules, and gravity
  fields (water, lava, wind later on) are a shared system.
- **The player's box.** The collision shape and the ground check use the original's sizes.
- **The magnet.** The Gravity Axe's secondary pulls using the same movement rules.

## A tool for comparing

A jump recorder logs every jump tick by tick, so a jump can be compared against measurements
from the original.

## Writing it down

Two documents came out of this: a **movement reference** of how the original worked (570
lines, numbered sections, with a tracker of what's done) and a **player movement** document
on how L2 handles each case. They're the first thing to read before touching movement again.

## What's next

Water edges, and the places movement touches the rest of the game: doors, lifts and
knockback.
