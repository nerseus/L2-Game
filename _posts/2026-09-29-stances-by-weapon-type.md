---
title: "Stances by weapon type"
date: 2026-09-29 00:29:46 -0500
categories: [Dev Diary, Animation]
tags: [animation, weapons, first-person, tools]
description: "Animations follow the weapon type, not the slot, plus projectile and first-person fixes."
# image:
#   path: /assets/img/posts/2026-09-29-stances-by-weapon-type.png   # 1200x630 social preview
---

<!-- Source: L2 PR #29. First pass generated from the file changes; edit freely. -->
## Weapon type, not slot

The Advanced slot can hold a bow, a crossbow, a staff, a wand or a thrown weapon, and
each needs a different stance. Animations are now picked by **weapon type** (melee,
bow, crossbow, staff, wand, thrown and so on), matching the original's own numbering.
About 160 more clips were converted to fill in every type for every character, and a
tool rebuilds each character's animation setup from the weapon type definitions. It also
lists any animation that still needs converting.

## Projectiles and first person

- Projectile starting points were tuned per weapon in third person.
- Several first-person weapon models were fixed. The spell weapons, for example, share
  one model with different skins.
- The attack pose now snaps on instantly, so the idle pose no longer shows for a moment
  after a projectile has already left.

## Debugging

New debug keys pause the game the moment your projectile appears, so the character,
weapon and projectile can be inspected in place.

<!-- SCREENSHOT: one character in several weapon stances -->
