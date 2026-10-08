---
title: "First magic: the Druid's staff"
date: 2026-09-10 21:14:55 -0500
categories: [Dev Diary, Weapons]
tags: [weapons, projectiles, effects, networking]
description: "The first original weapon fires, along with the effects it needs."
# image:
#   path: /assets/img/posts/2026-09-10-first-magic-the-druids-staff.png   # 1200x630 social preview
---

<!-- Source: L2 PR #14. First pass generated from the file changes; edit freely. -->
The first original weapon is in: the Druid's staff.

## Effects

The original's sprite effects came across with it: flames, fireballs, explosions, glows,
smoke, sparks, water, slime and lava frames.

## Projectiles that travel

Projectiles move through the world over time rather than hitting instantly. Rather than
creating a networked object for every shot, each weapon keeps a small rolling record of
its projectiles. A shot is written once when it's fired and once when it hits, so the
network cost doesn't grow however long a projectile flies. The visible projectile is just
a pooled effect following that record.

Shots come from fixed points on the character rather than from an animated hand. Animated
bones don't line up exactly between machines, but a fixed point does, so every player
agrees where a shot started.

## Glow that holds up at range

A projectile is a stack of glowing layers: a bright core inside a softer halo. At a
distance perspective shrinks them all together into one flat blob. The glow now shrinks
a little more slowly than the rest, so a distant bolt still reads as a core with a halo
while still getting smaller.

<!-- CLIP: the Druid's staff firing across the test map -->
