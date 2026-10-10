---
title: "Into the water"
date: 2026-10-09 18:55:50 -0500
categories: [Dev Diary, Movement]
tags: [movement, swimming, water, effects, audio, animation]
description: "Swimming and water volumes, about 90% done: waves, underwater fog, breath and splashes."
# image:
#   path: /assets/img/posts/2026-10-09-into-the-water.png   # 1200x630 social preview
---

<!-- Source: L2 PRs #34 and #35. -->
You can now swim. Water in L2 is loosely based on how Lithtech handled swimming and
water volumes, and this first version is roughly **90% finished**.

{% include embed/youtube.html id='jJ3jI1NrU-Q' %}

## What's in

- **Water that looks the part:** the original water textures, with transparency and
  animation.
- **Waves:** the water surface is a moving grid of small waves, recreated from the
  original's own wave maths so it ripples the same way.
- **Under the surface:** once your view goes under, the whole screen takes on the water's
  colour (your weapon too) and fog closes in. Each body of water has its own colour and
  fog, so a murky pond and a clear pool look different.
- **Swimming animations**, forwards and backwards, for every character. Weapons still
  work in the water.
- **Getting in and out:** jump in, fall in or wade in too deep and you start swimming.
  Jump out again from the surface.
- **Sinking and treading water:** stop swimming and you slowly sink. At the surface you
  hover with your head above the water. Crouch to dive down.
- **Splashes:** a sound as you go in, a sound as your head comes back up, and an
  underwater loop while you're under. Other players' splashes play too. Wading through a
  shallow puddle just sounds like footsteps.
- **Holding your breath:** under water, your air runs down. Run out and you start
  drowning, taking more damage every second until you surface. Coming up refills it
  straight away.
- **Lava** uses the same system, so it can be swum in, with its own surface and fog.

## Still to do

- **The edge of the water:** walking along the edge of a water volume needs work, both
  the movement and the sounds.
- **Sinking speed** needs adjusting.
- **Jumping out of the water** needs some movement tweaks.
- **Breath** needs an air meter on the HUD, and proper drowning damage numbers.
- **Lava damage** is still to come.
