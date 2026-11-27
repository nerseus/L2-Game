---
title: "A dedicated server"
date: 2026-11-21 20:03:19 -0600
categories: [Dev Diary, Multiplayer]
tags: [dedicated server, server config, map rotation]
description: "A headless server build that starts a game on launch, set up from a JSON file."
---

<!-- Source: L2 PR #92. First pass generated from the file changes; edit freely. -->
L2 can now run as a **dedicated server**: no menus, no graphics and no host player.

- **Starts a game on launch,** with sensible defaults and no command line at all: Legends
  Standard, every map, 16 players.
- **A JSON config file** (`server.json` beside the server, or `-config <file>`) holds everything
  the New Game screen sets: name, game type, maps, players, match and round length, gold, bots,
  bot skill, friendly fire, monsters and buy options. The first run writes the file with every
  default, so it documents itself.
- **Strict checking:** a typo or a value out of range stops the server with a clear message,
  rather than starting a different game than you asked for. A map it doesn't know is a warning.
- **Maps:** `"all"`, `"original"`, or your own list in order. Rotations can now hold up to 128
  maps.
- **The match clock waits** for the first human to join.
- **One set of rules** for the New Game screen and the server, so both start the same game.
- Hit and hitbox logging (`-logHits`, `-logHitboxes`) to help track down damage problems.
