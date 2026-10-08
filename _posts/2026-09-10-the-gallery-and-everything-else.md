---
title: "The gallery, and everything else"
date: 2026-09-10 10:22:12 -0500
categories: [Dev Diary, Art]
tags: [art, audio, ui, import]
description: "Every model and sound comes across, and the gallery lets you look at all of it."
# image:
#   path: /assets/img/posts/2026-09-10-the-gallery-and-everything-else.png   # 1200x630 social preview
---

<!-- Source: L2 PR #13. First pass generated from the file changes; edit freely. -->
This was the big import: thousands of files.

## Everything else

- **Models:** props, weapons, pickups and monsters, with their textures, materials and
  animations.
- **Audio:** ambient loops, weapon sounds, player sounds, doors, deaths, pickups and
  events.

## The gallery

The original had a gallery for browsing its characters and creatures, and L2 now has one
too, filled from the original's own gallery table.

The hard part was framing. The gallery runs from a throwing axe 0.27 m tall to a red
dragon over 14 m tall, so a fixed camera either loses the small things or fills the view
with dragon hide. Each entry is now framed from its own size, centred so it spins in place,
and you can handle it:

- **Left drag** to spin it.
- **Scroll** to zoom in and out.
- **Middle drag** to pan up and down a tall model.

Models that aren't playable characters sit in their raw bind pose by default (usually
lying flat), so the gallery picks each one's display pose instead.

<!-- SCREENSHOT: the gallery showing the dragon, and a throwing axe -->
