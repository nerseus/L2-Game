---
title: "Bringing in the cast"
date: 2026-09-07 08:22:35 -0500
categories: [Dev Diary, Art]
tags: [characters, art, import]
description: "The original characters, their textures and animations arrive in the new project."
# image:
#   path: /assets/img/posts/2026-09-07-bringing-in-the-cast.png   # 1200x630 social preview
---

<!-- Source: L2 PR #1. First pass generated from the file changes; edit freely. -->
L2 starts from a working multiplayer shooter sample built on Unity 6 and Photon Fusion.
The first real change was to put the original characters into it.

## What went in

- **Every player model:** Archer, Druid, Heretic, Paladin, Sorceress and Warrior, plus the
  Good King and Evil King, along with a low-poly stand-in.
- **Their textures and materials**, around ninety of each.
- **Their animations:** a shared base set plus a small per-character set for each class.
- **The look of the old worlds:** skybox textures and cloud layers, torch flame frames
  and a handful of default materials and shaders.

## Small scripts, old tricks

A few helper scripts came along to reproduce effects the original engine did for free:

- Billboards that always face the camera, including candle flames that flicker in size.
- A skybox that stays centred on the camera, so the sky never gets closer.
- Texture animation and scrolling, for flowing water, lava and flickering fire.
- Metadata from the original texture and world files (surface flags, ambient light and
  so on) kept on the imported objects, so later work can read it back.

<!-- SCREENSHOT: the full cast standing in the empty test scene -->

Nothing is playable yet. That's next.
