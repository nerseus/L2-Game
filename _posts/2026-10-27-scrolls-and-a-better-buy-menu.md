---
title: "Scrolls and a better buy menu"
date: 2026-10-27 08:38:47 -0500
categories: [Dev Diary, Weapons]
tags: [scrolls, buy menu, spells, hud]
description: "The seven scrolls (spells), and buy options that follow the original's rules."
# image:
#   path: /assets/img/posts/2026-10-27-scrolls-and-a-better-buy-menu.png   # 1200x630 social preview
---

<!-- Source: L2 PR #59. First pass generated from the file changes; edit freely. -->
## Scrolls

Scrolls are single-use spells you buy and carry. All seven are in:

- **Jump**
- **Fire Protection**
- **Feather Fall**
- **Wizard Eye**, which has its own post next
- **Teleport**
- **Invisibility**
- **Haste**

Active scrolls show an effect on the HUD. The scroll effects live in one component, so adding
another is cheap.

## Buying

- **Purchase options** now say what can be bought and when, including a game option to turn
  super weapons off.
- The buy menu shows the new options and handles the original's rules.
- Dropped weapons and pickups were reworked so a thrown weapon can be picked up again.

<!-- SCREENSHOT: the buy menu with scrolls; an active-scroll HUD -->

## What's next

The mini map, and flying a Wizard Eye.
