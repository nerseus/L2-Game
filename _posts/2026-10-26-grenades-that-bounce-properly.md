---
title: "Grenades that bounce properly"
date: 2026-10-26 09:41:53 -0500
categories: [Dev Diary, Weapons]
tags: [weapons, grenades, projectiles, physics]
description: "Grenades and other bouncing projectiles now bounce like the originals."
# image:
#   path: /assets/img/posts/2026-10-26-grenades-that-bounce-properly.png   # 1200x630 social preview
---

<!-- Source: L2 PR #56. First pass generated from the file changes; edit freely. -->
A quick fix to the way thrown weapons bounce.

- **Bouncing.** Grenades, throwing weapons and mines now follow the bounce rules from the
  original data instead of the physics engine's.
- **Land mines** and the bounce behaviour were adjusted along the way.
- A few projectile definitions got new bounce values.

<!-- CLIP: a grenade bouncing around a corner -->
