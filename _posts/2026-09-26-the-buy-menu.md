---
title: "The buy menu"
date: 2026-09-26 08:42:35 -0500
categories: [Dev Diary, UI]
tags: [ui, buy-menu, weapons, controls]
description: "Buying weapon upgrades mid-match, driven by number keys like the original."
# image:
#   path: /assets/img/posts/2026-09-26-the-buy-menu.png   # 1200x630 social preview
---

<!-- Source: L2 PR #26. First pass generated from the file changes; edit freely. -->
The buy menu is in.

## How it works

- It works like the original: number keys **1 to 9** pick an option and **0** goes back
  or exits.
- The top level lists categories. Each category lists the weapons (and later, armor)
  the original data put in it, in the original order.
- Items restricted to another class don't show up.
- A bought weapon replaces whatever is in its slot and is equipped straight away.

Buying is checked by the server against the same data, so a player can't give
themselves something the menu wouldn't offer. There's no money yet, so everything is
free for now.

## Keys that stay where they belong

With number keys picking menu options and switching weapons, pressing "2" in the buy menu
could also switch weapons. Input now has **modes**: gameplay, menus, character selection
and the debug console. Only the active mode's keys are live, and a key held while the
mode changes doesn't count until it's pressed again.

<!-- SCREENSHOT: buy menu open over gameplay -->
