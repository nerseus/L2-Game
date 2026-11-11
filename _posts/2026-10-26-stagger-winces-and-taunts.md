---
title: "Stagger, winces and taunts"
date: 2026-10-26 20:22:57 -0500
categories: [Dev Diary, Animation]
tags: [combat, winces, knockback, taunts, animation, audio]
description: "Getting hit now knocks you back, kicks your view and plays a wince. Plus taunts."
# image:
#   path: /assets/img/posts/2026-10-26-stagger-winces-and-taunts.png   # 1200x630 social preview
---

<!-- Source: L2 PRs #57 and #58. First pass generated from the file changes; edit freely. -->
Being hit used to mean losing health and nothing else. Now it hurts.

## Getting hit (#57)

- **Winces.** A hit plays one of seven wince animations, chosen by where you were hit.
- **Knockback.** Some weapons push you back, using the weapon's own speed and time, away from
  where the shot entered your box.
- **View kick.** Damage kicks your view: pitch from the front or back, roll from the side,
  stronger for the head.
- **Leg hits** slow you for two seconds, and **arm hits** widen your aim a little.
- **Falls.** Landing hard dips the view, and a damaging fall rolls it.
- **Sounds.** Wince and death cries, weapon sounds at the original's radii, and fixes for
  multiplayer.
- Fonts and yellow text were adjusted.

## Taunts (#58)

Three **taunts** can be played from a key. The temporary test keys for previewing deaths,
promised in an earlier post, are gone.

<!-- CLIP: getting hit from different directions, then a taunt -->

## What's next

Scrolls, and the buy menu.
