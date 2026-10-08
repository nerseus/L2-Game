---
title: "First person, third person"
date: 2026-09-11 11:07:35 -0500
categories: [Dev Diary, Characters]
tags: [camera, first-person, third-person]
description: "A key to switch between first and third person on the fly."
# image:
#   path: /assets/img/posts/2026-09-11-first-person-third-person.png   # 1200x630 social preview
---

<!-- Source: L2 PR #15. First pass generated from the file changes; edit freely. -->
L2 started from a third-person template. The original was played in first person. Now
it's both: one key switches between them at any time.

## Getting first person right

- **The eye goes in the middle of the head.** The third-person camera sits over the
  shoulder. First person uses the centre of the head instead.
- **Your body disappears, your weapon doesn't.** In first person your own body is
  hidden so it doesn't block the view, but anything held in your hands stays visible.
- **Weapons get a small correction** so they sit naturally in first person.

The notes also gained the rules for attaching weapons to the original characters'
attachment points: positions need scaling, rotations don't.

<!-- CLIP: toggling between first and third person -->
