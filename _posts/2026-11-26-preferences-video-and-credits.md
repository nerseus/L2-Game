---
title: "Preferences, video options and credits"
date: 2026-11-26 07:44:24 -0600
categories: [Dev Diary, UI]
tags: [preferences, video options, player id, credits, disclaimer]
description: "Settings saved to a file, better video options, a portable player ID and a first-run disclaimer."
---

<!-- Source: L2 PR #94. First pass generated from the file changes; edit freely. -->
- **Settings in a file.** Preferences, video, audio, controls, key bindings and the last New
  Game setup are now saved to `prefs.json` instead of the Windows registry. Run two copies of
  the game on one PC (handy for testing) and only the first one writes the file.
- **Better video options:** window mode, monitor and resolution, saved in a way that survives
  plugging monitors in and out.
- **A player ID you can see and edit.** It's created on the first run and saved with your name,
  so you can type it into another computer and carry the same ID over. New players start as
  "Player" and five digits.
- **Credits and a disclaimer** show on the first run.
- **The setup screen** has a plain look of its own, since none of the original artwork is
  converted yet when it first appears.
