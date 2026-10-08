---
title: "Behind the scenes: data-driven everything"
date: 2026-09-26 06:35:15 -0500
categories: [Dev Diary, Tools]
tags: [tools, data, weapons, effects]
description: "A big restructure: weapons, projectiles and characters become editable definitions."
# image:
#   path: /assets/img/posts/2026-09-26-data-driven-everything.png   # 1200x630 social preview
---

<!-- Source: L2 direct commits to main, 2026-09-22 to 2026-09-26 (no branch/PR). First pass generated from the file changes; edit freely. -->
A run of behind-the-scenes work between features, and one of the biggest changes so far.

## Definitions instead of tables

The original data used to be turned into code. Now every weapon, weapon type, projectile,
player class, armor piece and gallery entry is its own editable definition in the
project. Weapons and projectiles read nearly all of their values from those definitions,
so tuning a weapon means changing its data, not its code.

## Tools

- **An in-game debug console** with commands, for example to show projectile paths.
- **An animation debug window** for inspecting what a character is playing.
- **A weapon and projectile browser** that lays out every weapon and projectile side
  by side with its stats.
- **Prefab builders** that create weapon and effect prefabs from their definitions.

## Every weapon, first pass

With all that in place, every weapon, projectile and effect got an initial pass. Each
one has a real model, a projectile, effects and data. The Druid's timings were checked
against the original down to the crosshair spread.

The player setup was also reorganised and a lot of dead code from the template was
removed.

<!-- SCREENSHOT: the weapon browser -->
