---
title: "The staff in your hands"
date: 2026-09-12 18:11:32 -0500
categories: [Dev Diary, Weapons]
tags: [weapons, first-person, animation]
description: "First person gets its own weapon models and animations."
# image:
#   path: /assets/img/posts/2026-09-12-the-staff-in-your-hands.png   # 1200x630 social preview
---

<!-- Source: L2 PR #18. First pass generated from the file changes; edit freely. -->
The original game had a separate, more detailed model for the weapon you see in your own
hands in first person. Those models now appear in L2.

- In first person, your weapon is swapped for its first-person model. Only you see it;
  everyone else still sees the normal weapon in your character's hands.
- The first-person model plays its own animations: **idle**, **attack** and **reload**,
  plus an occasional **fidget** every three to eight idle loops, as in the original.
- The original models came in at a tiny scale, so each one is resized on screen without
  touching the source.

Equip, alternate attack and charge animations exist on some weapons and will come later.

The data tables were also tidied so their columns line up and are easier to read.

<!-- CLIP: the staff's idle, fidget and attack in first person -->
