---
title: "UI cleanup, and a new take on ammo"
date: 2026-09-19 08:27:58 -0500
categories: [Dev Diary, UI]
tags: [ui, hud, weapons, art]
description: "Sharper character textures, cleaner art, a better HUD and auto-reloading ammo."
# image:
#   path: /assets/img/posts/2026-09-19-ui-cleanup.png   # 1200x630 social preview
---

<!-- Source: L2 PR #22. First pass generated from the file changes; edit freely. -->
## Sharper characters

All 92 character textures now have upscaled versions.

## Clean art everywhere

The cyan-keying fix for inventory icons now covers all of the original interface art,
so no more cyan squares behind menu pieces.

## Ammo that refills itself

Weapons no longer use the template's magazine-and-reserve ammo. Each weapon has a single
pool that **reloads itself on a timer** once it runs dry, and you can start a reload early
at any time. The ammo visibly counts back up during the reload. Switching away
mid-reload loses the progress, so a weapon you swap back to starts its reload again.

## HUD

The weapon panel and gameplay HUD were reworked to match.

<!-- SCREENSHOT: new HUD, mid-reload -->
