---
title: "An installer, update checks and in-game feedback"
date: 2026-11-27 11:35:00 -0600
categories: [Dev Diary, Tools]
tags: [installer, updates, feedback, versioning, download]
description: "L2 now installs with a setup program, checks for updates and can send feedback from inside the game."
---

<!-- Source: L2 PR #95. First pass generated from the file changes; edit freely. -->
L2 is ready for people to try. See the [Download]({{ '/download/' | relative_url }}) page.

## The installer

- **One setup program,** `L2-Setup.exe`. It installs for your Windows user only, so there's no
  administrator prompt to install, run or update.
- **The game data isn't in the installer.** L2 downloads it on the first run, and installing a
  newer version leaves it alone.

## Update checks

At startup L2 reads a small file from the L2 server that says:

- whether a **newer version** is out (Get Update or Continue), or a **required** one (Get
  Update only), with release notes;
- any **announcement**, shown once;
- which **data packs** this version needs. Only the packs that are missing or out of date are
  downloaded.

If the server can't be reached, the game simply starts.

## Feedback from inside the game

A **Feedback / Suggestion / Bug Report** window, from the main menu or the in-game menu.
It sends your comment, and optionally the last lines of the game's log (with personal
details scrubbed), along with the game and data versions and the current map. Your IP address
isn't stored.

## Also

- **Smaller sounds:** music is kept as MP3 instead of decoded audio.
- The F4 debug panel hides while a menu is open.
- The version is now **0.0.3 beta**.
- Known problems moved into their own list, now on the [Issues]({{ '/issues/' | relative_url }})
  page.
