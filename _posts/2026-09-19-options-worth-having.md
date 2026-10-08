---
title: "Options worth having"
date: 2026-09-19 21:46:30 -0500
categories: [Dev Diary, UI]
tags: [ui, options, controls, audio]
description: "Video, sound and controls options, with fully rebindable keys."
# image:
#   path: /assets/img/posts/2026-09-19-options-worth-having.png   # 1200x630 social preview
---

<!-- Source: L2 PR #23. First pass generated from the file changes; edit freely. -->
The options menu was rebuilt around three pages: **Video**, **Sound** and **Controls**.

## Rebind anything

Every action now has two key slots, a primary and an alternate, and either can be
rebound from the Controls page:

- Click a slot, press the new key, done.
- Rebinding a key that's already in use is caught as a conflict.
- Slots can be cleared.
- Rebinds are saved, and apply everywhere straight away.

The action list follows the original's controls: move, look, jump, primary and secondary
attack, reload, use, walk, crouch, a key for each weapon slot, fast weapon switch and
more. Even "Change Character" is now an action you can rebind instead of a hard-wired `/`.

## Sound

Projectile and explosion sounds now go through the game's audio mixer, so the effects
volume and mute options actually reach them.

<!-- SCREENSHOT: the Controls options page -->
