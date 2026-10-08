---
title: "A proper character select"
date: 2026-09-08 18:07:46 -0500
categories: [Dev Diary, UI]
tags: [ui, characters, menus]
description: "The character selection screen gets icons, a new layout and a 3D preview you can spin."
# image:
#   path: /assets/img/posts/2026-09-08-a-proper-character-select.png   # 1200x630 social preview
---

<!-- Source: L2 PR #6. First pass generated from the file changes; edit freely. -->
The character selection screen got a rework.

- **Icons** for each character.
- **A row layout** that can hold rows of different lengths, centred, which a standard grid
  can't do.
- **A 3D preview you can handle:** drag left and right to spin the character, scroll to
  zoom in. The zoom moves along the line to the character rather than straight ahead,
  so the model stays put on screen instead of sliding sideways. Leaving the screen resets
  the view, so the main menu never shows a character left in an odd pose.

<!-- SCREENSHOT: character select with the preview zoomed in -->
