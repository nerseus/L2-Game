---
title: "Moving like the original"
date: 2026-10-04 21:20:51 -0500
categories: [Dev Diary, Movement]
tags: [movement, physics, fall-damage]
description: "Movement rebuilt to match measurements from the original, down to fall damage."
# image:
#   path: /assets/img/posts/2026-10-04-moving-like-the-original.png   # 1200x630 social preview
---

{% include embed/youtube.html id='k3FVmvSOBII' %}

<!-- Source: L2 PR #32. First pass generated from the file changes; edit freely. -->
Player movement was rebuilt from scratch to match the original, using frame-by-frame
recordings and tests in the original game.

## What was measured, and matched

- **No acceleration.** In the original you start at full speed on the first frame and
  stop dead when you let go. L2 does the same.
- **Speeds** come from each class's data: run, walk, crouch (as fast as walking),
  crouch-walking at half that, and backpedalling slower than walking.
- **Gravity** is a constant 16.2 m/s², and jump speeds come from the class data, so jump
  arcs match.
- **Slopes:** walkable up to 55°, with a slow creep downhill while standing. Anything
  steeper is a wall, and standing on one locks you into a slide to the bottom.
- **Stairs and ledges:** you step up onto anything low enough, and a jump can carry you
  onto a ledge up to its peak height plus a step.

## Fall damage

Fitted to drop tests in the original: no damage up to about 4.5 m, rising damage up to
about 15 m, flat from there, and lethal from about 18 m. Each landing also picks a body
part, which reproduces the spread seen in the tests.

## One addition

**Coyote time:** you can still jump for a moment after walking off an edge.

## Issues

LOMM (and Lithtech games of that era) used a cylinder to define player collisions and an axis-aligned box for ground detection.
This was discovered by trial and error, guesswork, and trying to borrow ideas from other Lithtech games of the same time (early 2000s).

Unity, and most current game engines, no longer support Cylinder colliders for physics. Most modern games use a capsule, which allows a rounded bottom and top for more natural feel.
To make this work, I tried numerous methods to simulate a cylinder. The closest fit I got was not perfect. I use 8 box colliders, rotated, giving a 32 sided prism - a close approximation to a cylinder down to a few cm in error.
Those few cm make a difference, leading to a few extra physics checks needed. Notably, approaching some corners a player might get stuck between 2 boxes, where a round cylinder would have glanced off.

In addition, it was discovered that the player's lower half does ground checks NOT by a cylinder but by an axis-aligned bounding box. On Wedding Day map, there's a diagonal wall to the right of the Good start base. When standing on the raised platform wall and jumping straight up the player suddenly hovers on top of the blocks stacked on the wall. They don't block normal movement but the ground check being a square, aligned to the world, catches on the diagonal blocks and the player is grounded. This requires, once again, more tweaks but is working.

