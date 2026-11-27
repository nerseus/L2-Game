---
title: "First-run setup: download or convert"
date: 2026-11-14 05:30:31 -0600
categories: [Dev Diary, Conversion]
tags: [setup, download, conversion, versioning]
description: "A setup screen that gets the game's data in place before the menu."
---

<!-- Source: L2 PR #90. First pass generated from the file changes; edit freely. -->
Before the menu, L2 now checks that all of its game data is in place.

- **All five data packs** (artwork, sounds, textures, models and maps) must be there, and made
  for this version of the game.
- If anything is missing or out of date, a **setup screen** appears first. It can:
  - **Download** the packs from the L2 server, or
  - **Convert** them from your own install of the original game. A folder picker lets you
    choose where it is, and L2 checks it really is the game before starting.
- **All or nothing:** converted packs are written to a staging folder and only replace the old
  ones once all five are done, so a cancelled or failed run leaves nothing half-written.
- A progress bar shows each step and the map being converted, with Cancel.
- **Versioned packs:** every pack is stamped with the game version that wrote it.

This ticks several items off the to-do list: startup conversion, versioning, and checking the
files are right.
