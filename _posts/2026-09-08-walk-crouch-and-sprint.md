---
title: "Walk, crouch and sprint"
date: 2026-09-08 18:09:26 -0500
categories: [Dev Diary, Movement]
tags: [movement, animation]
description: "Three new ways to move, each with its own animations."
# image:
#   path: /assets/img/posts/2026-09-08-walk-crouch-and-sprint.png   # 1200x630 social preview
---

<!-- Source: L2 PR #5. First pass generated from the file changes; edit freely. -->
Characters can now walk, crouch and sprint as well as run.

## How it works

- **Walk and crouch** each have their own set of animations. Their speed comes from
  those animations, so a crouched character moves as fast as the crouch cycle suggests.
- **Sprint** reuses the run animations with a speed boost on top.
- **Priority:** sprint loses to crouch and walk. Holding sprint while crouched keeps you
  crouched.
- **Turning while crouched** gets its own clips. The standing shuffle made the feet sink
  through the floor when played on a crouched character.

Only the player controlling a character reads its input. Everyone else just receives the
resulting animation blend over the network.

<!-- CLIP: walk, run, crouch and sprint in sequence -->
