---
title: "Magic, fixed"
date: 2026-10-03 10:03:23 -0500
categories: [Dev Diary, Weapons]
tags: [weapons, magic, effects]
description: "The magic weapons get their real primary attacks, including the Dragon Staff's breath."
# image:
#   path: /assets/img/posts/2026-10-03-magic-fixed.png   # 1200x630 social preview
---

<!-- Source: L2 PR #31. First pass generated from the file changes; edit freely. -->
Follow-up to last time, focused on the magic weapons.

## The Dragon Staff

The Dragon Staff breathes fire. The damage is instant: everything near a line out to the
weapon's range takes the hit, and walls block it. The look lingers, though: a stream of
flames leaves the staff one after another, each heading wherever you're aiming as it
leaves, so moving or turning sprays them around, just like the original.

{% include embed/youtube.html id='hWTtqJ_bhGs' %}

## Splash that respects walls

Explosions now check line of sight. Someone around a corner is safe unless part of them
is showing. Each character is hit once, at their nearest exposed spot.

## Better reach checks

Melee swings and the flamethrower now use a "thick" ray, checked along the whole line,
instead of a single sphere. Walls in the way block it.

## Explosions that stand up

Some explosions should rise straight up rather than along the surface they hit. Those
now stand upright, tilting away from nearby walls so they don't clip into corners.

The original fonts were also added, and several menu and HUD layouts were updated.

<!-- CLIP: the Dragon Staff in action -->
