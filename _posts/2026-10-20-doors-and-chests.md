---
title: "Doors and chests"
date: 2026-10-20 12:36:30 -0500
categories: [Dev Diary, Maps]
tags: [maps, doors, chests, multiplayer, world objects]
description: "Sliding and rotating doors, locked doors, and chests that open and throw out treasure."
# image:
#   path: /assets/img/posts/2026-10-20-doors-and-chests.png   # 1200x630 social preview
---

<!-- Source: L2 PR #53. First pass generated from the file changes; edit freely. -->
The maps can finally be interacted with.

<!-- CLIP: add YouTube embed here -->

## Doors

- **Use.** The use key tests a ray along your view, then a series of spheres, and the first
  thing it finds gets the message, as in the original.
- **Sliding and rotating** doors, with the original's speeds and motion curves. Rotating
  doors swing away from whoever opened them.
- **Auto-close**, sticky doors, and doors that reopen if something's caught in them.
- **Pushing players.** An opening door pushes you clear. A closing one reverses or pushes you
  aside, depending on the door. There's a document with every case.
- **Locked doors** rattle and play a sound when used.
- **Double doors** act together.
- Sounds for opening, closing and busy loops, at the right radius.

## Chests

- The lid is animated and the same on every player's screen.
- When it finishes opening, the chest rolls its treasure: nothing, a **gold bag** of 200 to
  500, or an **item** (invisibility, haste, jump, feather fall and so on).
- The treasure is thrown out of the chest and can be picked up when it lands.
- In team games nothing comes out while either team is empty.

## Under the hood

Doors and chests are networked. Their state is stored with a start time, so players who join
late see the right thing. The whole map resets between rounds. Stair climbing was also fixed.

## What's next

Things you can break, and things that lift you.
