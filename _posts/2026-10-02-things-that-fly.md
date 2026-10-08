---
title: "Things that fly"
date: 2026-10-02 03:08:36 -0500
categories: [Dev Diary, Weapons]
tags: [weapons, projectiles, camera, audio]
description: "Every primary attack gets its real behaviour: beams, bounces, splash and knockback."
# image:
#   path: /assets/img/posts/2026-10-02-things-that-fly.png   # 1200x630 social preview
---

<!-- Source: L2 PR #30. First pass generated from the file changes; edit freely. -->
A big pass over every weapon's primary attack.

## Attack behaviours

What a shot does now comes from its projectile's data:

- **Flying projectiles**, with several per shot for spread weapons like the crossbows.
- **Instant hits**, drawn as a beam from the weapon to where it landed, which then
  shrinks away. The beam uses the original beam textures unchanged.
- **Zoom**, for weapons whose secondary is a scope.
- **Bounce:** thrown axes and hammers bounce off walls up to their bounce limit, and
  **tumble** end over end in flight.
- **Splash:** explosions damage everyone nearby, falling off with distance.

## Feeling the hits

- **View kick:** splash damage kicks your view, and your aim with it, up and back down.
- **Knockback:** the Wand of Force pushes people along the ground, sliding along walls
  and up ramps like normal movement.
- **Voices:** characters cry out when hurt and when killed, using the original sounds.
  Your own character's cries play at full volume.

## Smoother crouching

The first-person camera and firing point now ease between standing and crouched height
instead of snapping. Collision still changes instantly.

## Field of view option

A new Field of View option, measured as the original did (horizontal degrees at 4:3).
Wider screens see more at the sides with the same vertical view.

<!-- CLIP: thrown axes bouncing, a beam weapon, and splash damage -->
