---
title: "Game options"
date: 2026-11-10 21:16:04 -0600
categories: [Dev Diary, UI]
tags: [game options, host screen, menus, console]
description: "A new Host screen with the options for a match, a world list and console commands."
# image:
#   path: /assets/img/posts/2026-11-10-game-options.png   # 1200x630 social preview
---

<!-- Source: L2 PR #86. First pass generated from the file changes; edit freely. -->
The New Game screen now looks and works like the original's.

- **Host screen options:** friendly fire, monsters, super weapons, purchase time (0 to 60
  seconds at the start of each round) and bot counts.
- **A world list** to pick the map, with a focus frame for gamepad and keyboard navigation.
- **Overrides.** The host's choices apply for that run without touching the saved settings.
  Joining a game clears them.
- **Console commands** for the same options, with better argument handling.
- **Radar and scoreboard** fixes, and a **purchase phase** at the start of each round.

<!-- SCREENSHOT: the Host screen -->

## What's next

A dedicated server, web builds and localization are on the to-do list.
