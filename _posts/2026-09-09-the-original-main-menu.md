---
title: "The original main menu"
date: 2026-09-09 20:24:38 -0500
categories: [Dev Diary, UI]
tags: [ui, menus, art]
description: "The original interface art goes in, starting with the main menu."
# image:
#   path: /assets/img/posts/2026-09-09-the-original-main-menu.png   # 1200x630 social preview
---

<!-- Source: L2 PR #11. First pass generated from the file changes; edit freely. -->
The main menu now uses the original game's art.

## What went in

- The interface screens and their buttons, each with normal, highlighted and pressed
  states.
- HUD pieces, inventory icons, the loading screen art and the original fonts.

## Keeping it in proportion

The original screens were drawn at 640x480. On a modern widescreen display the artwork
is letterboxed, and anything positioned against the edge of the window drifts off it.
Buttons are anchored to the artwork instead, and text now scales with the artwork rather
than the window, so labels stay the right size whatever the resolution.

<!-- SCREENSHOT: the main menu, old art on a modern screen -->
