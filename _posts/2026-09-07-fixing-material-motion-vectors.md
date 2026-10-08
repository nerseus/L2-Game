---
title: "Fixing material motion vectors"
date: 2026-09-07 10:24:57 -0500
categories: [Dev Diary, Art]
tags: [rendering, materials]
description: "A quick rendering fix for the newly imported character materials."
# image:
#   path: /assets/img/posts/2026-09-07-fixing-material-motion-vectors.png   # 1200x630 social preview
---

<!-- Source: L2 PR #2. First pass generated from the file changes; edit freely. -->
A small but visible fix. The imported character materials weren't writing motion vectors
correctly, which matters a lot in a modern renderer: motion blur and temporal
anti-aliasing both lean on them. Without them, moving characters smear and ghost.

All 43 character materials were updated so they render cleanly in motion.

<!-- CLIP: before/after of a character turning quickly -->
