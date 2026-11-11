---
title: "Weapons, monsters and players from your install"
date: 2026-10-18 20:17:25 -0500
categories: [Dev Diary, Conversion]
tags: [conversion, weapons, projectiles, monsters, players, models, cleanup]
description: "Weapon models, projectiles, monsters and all the player characters are now converted from your own copy, and the old converted files are gone."
# image:
#   path: /assets/img/posts/2026-10-18-weapons-monsters-and-players-from-your-install.png   # 1200x630 social preview
---

<!-- Source: L2 PRs #46, #47 and #48. First pass generated from the file changes; edit freely. -->
The runtime conversion work from earlier posts reaches the things you actually fight with and
as.

## Weapons, projectiles and monsters (#46)

- **Weapons.** First-person and third-person weapon models are converted, with the
  animations that go with them.
- **Projectiles.** Every projectile model is converted.
- **Monsters.** Every monster model is converted too, with skeletons built when a model has
  animations, so they can move and attack later.
- A debug marker shows where a weapon sits in the hand while tuning.

## Players (#47)

All eight player characters now load from the conversion, including their **hitboxes**, which
are set up from the original's data. The old hand-made character files went away.

## Clearing out (#46 to #48)

This was the point where the project stopped carrying converted content at all. The change
removed millions of lines of converted model data and thousands of files from the project, and
a further cleanup moved the remaining project folders into L2's own structure. The
repository is a good deal smaller and lighter to open.

<!-- SCREENSHOT: the gallery showing converted weapons and monsters -->

## What's next

Making the game around them: rounds, gold, voting and sounds.
