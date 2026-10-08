---
title: "Fixing the walk cycle"
date: 2026-09-08 18:45:02 -0500
categories: [Dev Diary, Animation]
tags: [animation, movement]
description: "Walking, walking backwards and standing still all look right now."
# image:
#   path: /assets/img/posts/2026-09-08-fixing-the-walk-cycle.png   # 1200x630 social preview
---

<!-- Source: L2 PR #7. First pass generated from the file changes; edit freely. -->
Polish on the new movement. The walk animation, walking backwards and the idle all had
problems after the first conversion. Fifteen clips were reworked and two new ones added,
and every character was updated to use them.

<!-- CLIP: walking forwards and backwards, then stopping -->
