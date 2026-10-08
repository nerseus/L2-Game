---
title: "Old bones: animation, scale and field of view"
date: 2026-09-15 17:52:39 -0500
categories: [Dev Diary, Animation]
tags: [animation, camera, audio, art]
description: "Every model and animation re-imported, weapon sounds from the data, and the original FOV."
# image:
#   path: /assets/img/posts/2026-09-15-old-bones-scale-and-fov.png   # 1200x630 social preview
---

<!-- Source: L2 PR #20. First pass generated from the file changes; edit freely. -->
A big clean-up pass across all the imported models, plus sound and the camera.

## Models and animations

Every prop, weapon, pickup and monster was re-imported with fixed scale and animations,
more than 1,500 files in all.

## Sounds from the data

Weapon sounds are now wired up automatically from the original data tables: the attack
sound on the weapon, the launch sound at the muzzle, a looping sound that travels with the
projectile, and the explosion where it lands. Sounds on pooled effects restart properly
when an effect is reused, and stop when it's put away.

## Icons without the cyan

The original inventory icons used pure cyan as their transparent colour. They now get
that colour keyed out on import, with a little tolerance for compression, and the colour
under the transparent pixels cleared so no cyan halo shows around the edges.

## Field of view

The original didn't use a standard field of view: its horizontal and vertical angles
didn't match what a modern camera would compute for the same screen. A temporary tool
lets the two angles be set independently to match screenshots from the original.

<!-- SCREENSHOT: original vs L2, same spot, same view -->
