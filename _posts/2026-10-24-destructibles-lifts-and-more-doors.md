---
title: "Destructibles, lifts and more doors"
date: 2026-10-24 21:10:03 -0500
categories: [Dev Diary, Maps]
tags: [maps, destructibles, lifts, triggers, doors, multiplayer]
description: "Breakable props, lifts, rotating brushes, switches and triggers, and maps for 64 players."
# image:
#   path: /assets/img/posts/2026-10-24-destructibles-lifts-and-more-doors.png   # 1200x630 social preview
---

<!-- Source: L2 PR #54. First pass generated from the file changes; edit freely. -->
- **Destructible props.** Crates, barrels and similar can be broken, with their own settings.
- **Lifts** carry whoever stands on them.
- **Rotating brushes** are in.
- **Switches, buttons and triggers** can now open doors and start other things in the map.
- **More doors.** Trap doors and a few special cases.
- **UI updates**, and the maps now allow **64 players**.
- Networked state for all of the above in one shared place, so late joiners see the same world.

<!-- CLIP: breaking a crate, a lift ride and a lever opening a door -->

## What's next

Game modes that use these objects.
