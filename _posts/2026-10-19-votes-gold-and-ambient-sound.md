---
title: "Votes, gold and ambient sound"
date: 2026-10-19 15:26:13 -0500
categories: [Dev Diary, Gameplay]
tags: [gameplay, voting, gold, audio, buy zones, spectating]
description: "Map voting, starting gold, buy zones, spectator start points and the maps' ambient sounds."
# image:
#   path: /assets/img/posts/2026-10-19-votes-gold-and-ambient-sound.png   # 1200x630 social preview
---

<!-- Source: L2 PR #49. First pass generated from the file changes; edit freely. -->
The match starts to feel like a match.

## Voting

A **vote menu** lets players vote for the next map or to kick a player. A vote passes when
more than half the players agree. The server tallies it, with one map vote and one kick vote
per player.

## Gold and buying

- Everyone starts with **500 gold**.
- A gold widget on the HUD shows how much you have.
- **Buy zones** follow the original's rules, and a coin icon shows when you're standing in one.

## Spectators

Spectators now start at the map's own spectator start points instead of at a random place.

## Ambient sound

The maps' **ambient sound** objects (birds, wind, bells, organs) now play, with their radius
and volume. Several start switched off and wait for a trigger to turn them on.

## Documents

The decompiled options and settings were written up, with notes on what's not done yet.

## What's next

Footsteps and impact sounds, then armor.
