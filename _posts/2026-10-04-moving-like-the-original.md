---
title: "Moving like the original"
date: 2026-10-04 21:20:51 -0500
categories: [Dev Diary, Movement]
tags: [movement, physics, fall-damage]
description: "Movement rebuilt to match measurements from the original, down to fall damage."
# image:
#   path: /assets/img/posts/2026-10-04-moving-like-the-original.png   # 1200x630 social preview
---

<!-- Source: L2 PR #32. First pass generated from the file changes; edit freely. -->
Player movement was rebuilt from scratch to match the original, using frame-by-frame
recordings and tests in the original game.

## What was measured, and matched

- **No acceleration.** In the original you start at full speed on the first frame and
  stop dead when you let go. L2 does the same.
- **Speeds** come from each class's data: run, walk, crouch (as fast as walking),
  crouch-walking at half that, and backpedalling slower than walking.
- **No sprint.** The original didn't have one, so it's gone.
- **Gravity** is a constant 16.2 m/s², and jump speeds come from the class data, so jump
  arcs match.
- **Slopes:** walkable up to 55°, with a slow creep downhill while standing. Anything
  steeper is a wall, and standing on one locks you into a slide to the bottom.
- **Stairs and ledges:** you step up onto anything low enough, and a jump can carry you
  onto a ledge up to its peak height plus a step.
- **The player is a cylinder**, as in the original, so gaps are the same width straight
  on and at an angle.

## Fall damage

Fitted to drop tests in the original: no damage up to about 4.5 m, rising damage up to
about 15 m, flat from there, and lethal from about 18 m. Each landing also picks a body
part, which reproduces the spread seen in the tests.

## One addition

**Coyote time:** you can still jump for a moment after walking off an edge. The original
didn't do this, but it makes jumps feel fair.

## Also

- Left and right Ctrl/Shift/Alt now count as the same key, as they did in the original.
- A jump recorder logs every jump tick by tick, for comparing against the original.

<!-- CLIP: jumping and sliding side by side with recordings from the original -->
