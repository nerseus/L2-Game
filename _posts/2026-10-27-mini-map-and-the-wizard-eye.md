---
title: "The mini map and the Wizard Eye"
date: 2026-10-27 12:21:49 -0500
categories: [Dev Diary, UI]
tags: [radar, mini map, wizard eye, hud, teams]
description: "The original radar, a bigger mini map with toggled modes, and the Wizard Eye scroll."
# image:
#   path: /assets/img/posts/2026-10-27-mini-map-and-the-wizard-eye.png   # 1200x630 social preview
---

<!-- Source: L2 PR #60. First pass generated from the file changes; edit freely. -->
## Radar and mini map

- **The original radar** is rebuilt: blips for teammates and enemies, with the original's rules
  about who shows up. Friendly-fire rules are applied.
- **Mini map.** Toggle between modes to see the map around you.
- Map blips and the radar share a small pool so they stay cheap.

## Wizard Eye

The **Wizard Eye** scroll sends an eye flying that you steer with the mouse. Secondary attack
or Esc detonates it. While you fly it, the rest of the controls and menus are off, so you
can't do something else by accident. A bug with it was fixed too.

<!-- CLIP: flying a Wizard Eye through a map -->

## What's next

Monsters.
