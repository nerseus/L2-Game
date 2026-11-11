---
title: "Cleaning up the details"
date: 2026-11-08 22:04:12 -0600
categories: [Dev Diary, Gameplay]
tags: [fixes, cleanup, voting, hud, audio, bodies]
description: "A long list of small fixes after playing through everything."
# image:
#   path: /assets/img/posts/2026-11-08-cleaning-up-the-details.png   # 1200x630 social preview
---

<!-- Source: L2 PR #83. First pass generated from the file changes; edit freely. -->
A big batch of small things:

- **Roosters:** better behaviour.
- **Gravity Axe:** gravity on resting thrown items, plus sound and visual tweaks.
- **Voting** now needs more than 50%, not 50% or more.
- **Loading screen** stays up until a level is fully ready.
- **Dead bodies** no longer collide, and invisible shadows were fixed.
- **HUD:** text colours, radar opacity, and the hit indicator and damage numbers were removed
  from the crosshair.
- **Sounds:** item drops, the missing arm sound on clients, same-team grunting.
- **Princess** movement speed and running.
- **Eye Bow** behaviours and end of round movement.
- **Logging:** a single L2Log replaces scattered calls.
