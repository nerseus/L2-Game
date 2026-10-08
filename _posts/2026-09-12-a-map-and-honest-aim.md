---
title: "A map, and aim you can trust"
date: 2026-09-12 11:10:52 -0500
categories: [Dev Diary, Weapons]
tags: [aiming, maps, first-person]
description: "A premade map to test in, plus fixes so shots go where you aim."
# image:
#   path: /assets/img/posts/2026-09-12-a-map-and-honest-aim.png   # 1200x630 social preview
---

<!-- Source: L2 PR #17. First pass generated from the file changes; edit freely. -->
Testing moved to a premade map, which quickly showed that aiming needed work.

## Aim from where you're looking

In first person, shots were still being aimed from the third-person camera. Aim and the
first-person view now share the same eye position, so they can't disagree.

## Crouching lowers the shot

Shots start from a fixed point on the character, which didn't move when crouching. The
visible projectile came from the lowered weapon and jumped up to meet the aim line,
worst in first person. The firing point now drops with the crouch.

## Floors and ceilings

To avoid shots catching the corner of a wall right next to the target, the game ignored
some near misses along the shot's path. That window was far too wide: aiming down over a
ledge could shoot straight through the floor in front of you. The window now only covers
the end of the shot, near the target.

There's also an optional "blocked shot" marker on the crosshair, off by default.

<!-- SCREENSHOT: the premade map -->
