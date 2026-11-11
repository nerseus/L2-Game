---
title: "Teleporters"
date: 2026-11-02 07:46:17 -0600
categories: [Dev Diary, Maps]
tags: [maps, teleporters, triggers, monsters]
description: "Teleporters, and a fix that stops monsters jumping off other monsters."
# image:
#   path: /assets/img/posts/2026-11-02-teleporters.png   # 1200x630 social preview
---

<!-- Source: L2 PR #73. First pass generated from the file changes; edit freely. -->
- **Teleporters** (Dungeon Rescue): touch one and you're sent to its destination. Players are
  predicted in the mover, monsters and the Princess on the server. A teleporter with no
  destination isn't built.
- **Monster jumping.** Jumping off another monster is refused, as it is for players.
- **Triggers** accept ON and OFF.
