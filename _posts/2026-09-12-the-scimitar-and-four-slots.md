---
title: "The scimitar and the four-slot loadout"
date: 2026-09-12 21:19:49 -0500
categories: [Dev Diary, Weapons]
tags: [weapons, melee, animation, loadout]
description: "The first melee weapon, timed from the original data, and the four weapon slots."
# image:
#   path: /assets/img/posts/2026-09-12-the-scimitar-and-four-slots.png   # 1200x630 social preview
---

<!-- Source: L2 PR #19. First pass generated from the file changes; edit freely. -->
The Druid now has a scimitar as well as a staff, and every character has four weapon
slots.

## Four slots

Matching the original's data:

1. **Advanced:** bought or found upgrades.
2. **Basic:** your class's starting ranged or magic weapon.
3. **Melee:** always with you.
4. **Utility:** scrolls and special throwables.

The animation system originally only knew three weapon types (unarmed, pistol and rifle),
so every character's animation setup was expanded to one entry per slot.

## A swing on the original's timing

The scimitar's timing comes from the original data: how long from the start of the swing
until the blow lands, and how long before you can swing again. Damage hits every
character inside the weapon's reach, once per swing.

The first-person scimitar animation is 0.5 s long, but the blow lands at 0.2 s. Played
as-is, the first-person swing landed well after the damage. The animation is now
stretched or squashed to land exactly when the damage does, so first and third person
agree.

## Converting animations properly

The animation converter became a proper tool, handling the four traps found so far:
bone names that don't match, a scale that has to be measured rather than assumed,
rotations stored "upside down" between frames, and sampling at the original's frame rate.

<!-- CLIP: scimitar swing in first and third person -->
