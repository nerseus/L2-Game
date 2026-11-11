---
title: "Surface sounds"
date: 2026-10-19 21:28:51 -0500
categories: [Dev Diary, Weapons]
tags: [audio, footsteps, melee, blood, surfaces]
description: "Footsteps, jumping and landing, melee hits and blood now depend on the surface under you."
# image:
#   path: /assets/img/posts/2026-10-19-surface-sounds.png   # 1200x630 social preview
---

<!-- Source: L2 PR #50. First pass generated from the file changes; edit freely. -->
Walk across stone, wood, metal or grass and it should sound different. Now it does.

- **Footsteps** are chosen by the material under your feet, with the original's rules for when
  and how loud.
- **Jump and land sounds** use the same surface table.
- **Melee hits** have their own swing and impact sounds, and a hit on a body plays the blood
  sounds.
- **Blood** hit particles were fixed.
- The mapping from surface type to sound names is written up in a document of its own.

<!-- CLIP: running across different surfaces, then a melee fight -->

## How it works

Every world surface carries a type. A material table turns that type into a sound name, and
the movement code plays it. Melee hits use the same table, plus the target's own flesh sounds
when the target is a character.

## What's next

Armor, which changes what a hit does.
