---
title: "Every class armed"
date: 2026-09-17 15:25:55 -0500
categories: [Dev Diary, Weapons]
tags: [weapons, characters, cleanup]
description: "All six classes get their starting weapons, and the template's guns are gone."
# image:
#   path: /assets/img/posts/2026-09-17-every-class-armed.png   # 1200x630 social preview
---

<!-- Source: L2 PR #21. First pass generated from the file changes; edit freely. -->
Every class now has its starting weapons, not just the Druid:

| Class | Melee | Basic weapon |
|---|---|---|
| Archer | Spear | Bow |
| Druid | Scimitar | Staff |
| Heretic | Hammer | Claw Rod |
| Paladin | Long Sword | Crossbow |
| Sorceress | Dagger | Wand |
| Warrior | Berserker Axe | Throwing Axe |

## Goodbye, guns

The template came with a pistol, assault rifle, sniper rifle, grenades and ammo pickups.
They're all gone now, along with their models, sounds, icons and spawn points. Before
anything was deleted, every file and reference was catalogued so nothing was left
pointing at a missing gun.

{% include embed/youtube.html id='guf-21-dpc4' %}
