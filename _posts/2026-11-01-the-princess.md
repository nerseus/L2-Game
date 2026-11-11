---
title: "The Princess"
date: 2026-11-01 11:59:47 -0600
categories: [Dev Diary, Monsters]
tags: [monsters, princess, game modes, rescue, ai]
description: "Princess AI and the Princess Rescue game mode."
# image:
#   path: /assets/img/posts/2026-11-01-the-princess.png   # 1200x630 social preview
---

<!-- Source: L2 PR #66. First pass generated from the file changes; edit freely. -->
The Princess follows a good player to safety, and the Evil team tries to stop it.

- **Princess AI.** She follows the first player who reaches her, avoids cliffs, flinches when
  hit and moves with her own speeds.
- **Princess Rescue** is won by Good when a Good player leads her into a rescue zone. A round
  that runs out of time goes to Evil.
- **Gold.** Reaching her pays 200, and rescuing her pays 500 plus a team share.
- Monsters were reorganised around a shared brain interface so the Princess and the Dragon
  could slot in.

<!-- CLIP: leading the Princess through a castle to the rescue zone -->

## What's next

The Dragon.
