---
title: "Fixing map issues"
date: 2026-11-02 13:00:53 -0600
categories: [Dev Diary, Maps]
tags: [maps, props, animation, transparency, fixes]
description: "Doors blocked by something can't be used, and missing prop animations are in."
# image:
#   path: /assets/img/posts/2026-11-02-fixing-map-issues.png   # 1200x630 social preview
---

<!-- Source: L2 PR #77. First pass generated from the file changes; edit freely. -->
A round of fixes from playing through a map.

- Doors and other usable objects can't be used when something blocks their path.
- Props with MoveToFloor were fixed again.
- Missing **prop animations** and **morph animations** are now played.
- Layered transparent cards no longer hide each other.
- Looping models were added.
