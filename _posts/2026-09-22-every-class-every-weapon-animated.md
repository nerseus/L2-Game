---
title: "Every class, every weapon, animated"
date: 2026-09-22 05:51:56 -0500
categories: [Dev Diary, Animation]
tags: [animation, weapons, characters, tools]
description: "Hundreds of converted animations and weapons that sit in the right hands."
# image:
#   path: /assets/img/posts/2026-09-22-every-class-every-weapon-animated.png   # 1200x630 social preview
---

<!-- Source: L2 PR #25. First pass generated from the file changes; edit freely. -->
## Hundreds of animations

About 370 more of the original animations were converted for every character: the
weapon stances, attacks, reloads and deaths. Fingers and other small bones that the
modern humanoid system doesn't know about used to be dropped during conversion. They
now come through, so hands grip properly.

## Weapons in the right place

Weapons are now attached using each character's original attachment points, picked by
weapon type, rather than one hand-placed point per character. Every original attachment
point is recreated on the character, so it's easy to see which one a weapon should use.

## A tool for posing

A new editor overlay can pose a character in any of its animations, and pose the weapon
in its hand with the weapon's own animations at the same time. It makes checking a
weapon's grip, pose by pose, quick.

<!-- SCREENSHOT: a character posed mid-attack with weapon in hand -->
