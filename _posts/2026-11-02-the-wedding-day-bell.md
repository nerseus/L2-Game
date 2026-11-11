---
title: "The Wedding Day bell and timed triggers"
date: 2026-11-02 10:20:03 -0600
categories: [Dev Diary, Maps]
tags: [maps, props, triggers, audio, animation]
description: "Ring the bell, hit it with a weapon, and triggers that fire on a timer."
# image:
#   path: /assets/img/posts/2026-11-02-the-wedding-day-bell.png   # 1200x630 social preview
---

<!-- Source: L2 PR #76. First pass generated from the file changes; edit freely. -->
- **The bell.** Use its rope or hit it with a weapon and it rings, with a sound on each
  animation key. It's networked.
- **Models with a Ring animation** now get a skeleton, like chests do.
- **Timed triggers** fire after a set time into the round and then at random intervals. Cult
  of the Spider's crow uses one.
- Player shadows were ticked off the TODO.

<!-- CLIP: ringing the bell -->
