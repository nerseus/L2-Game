---
title: "Choose your fighter, or just watch"
date: 2026-09-09 08:21:24 -0500
categories: [Dev Diary, Characters]
tags: [characters, ui, spectating]
description: "Character selection moves into the game, and players can spectate until they pick."
# image:
#   path: /assets/img/posts/2026-09-09-choose-your-fighter-or-watch.png   # 1200x630 social preview
---

<!-- Source: L2 PR #9. First pass generated from the file changes; edit freely. -->
Picking a character now happens when you join a game, not in the main menu.

## Joining a game

- When you join, a character selection window opens.
- **The host must pick** before they can play. Somebody has to be in the game.
- **Everyone else can cancel** and spectate instead.
- Press `/` at any time to reopen the window and switch characters, whether you're
  playing or spectating.
- Number keys pick the matching character while the window is open.

## Spectating

A spectator gets a free-flying camera: mouse to look, movement keys to fly, and E/Q to
rise and fall, always straight up and down whatever way you're facing. It's purely local:
nothing is spawned and nobody else can see a spectator. The camera stops while a window
is open, so it doesn't spin while you're trying to click an icon.

<!-- SCREENSHOT: the selection window over the spectator view -->
