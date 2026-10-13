---
title: "Sounds and music"
date: 2026-10-11 17:54:43 -0500
categories: [Dev Diary, Conversion]
tags: [conversion, audio, music, tools]
description: "Every sound effect and voice converted from the install, and the music alongside it."
# image:
#   path: /assets/img/posts/2026-10-11-sounds-and-music.png   # 1200x630 social preview
---

<!-- Source: L2 PR #38. -->
All of the original's sound effects and voices now come from your install too.

## Sounds

Roughly 1,470 sounds are converted into a sounds pack. The original's WAV files are plain
8 or 16-bit audio, so each sound's samples are stored exactly as they were. Only the format and
any loop points are kept as notes. A sound turns into a playable clip the first time it's asked
for, and is cached after that.

The WAV reader walks the file chunk by chunk, so extra chunks before the audio (labels, cue
points, junk) don't get in the way.

## Playing them

A `ContentAudio` component plays a sound on an audio source by path, in the same way the art
loads on a UI image. In play mode it sets the clip, which is never saved. In the editor it can
preview the sound through a hidden source, so nothing converted ends up in a scene or prefab.

Weapon, armor, projectile and character definitions now point at their sounds by path as well.
The projectile, weapon and armor definitions used to hold the audio clips themselves.

## Music

The music is MP3, and Unity can only decode MP3 from a file. So for now each track is copied
unchanged into the asset folder and loaded in the background the first time it's needed
(about a tenth of a second for a two-minute track).

## The plan and the map

Also in this change: the plan for how a map goes from your install to a running match, written
up in `MapConversionAndSceneLoading.md`. In short: one shared scene for every map, the
expensive work done once on your machine, only stateful things like doors networked, and
nothing converted ever shipped.

<!-- SCREENSHOT: the sound conversion report -->

## What's next

Reading the game's own archives, instead of needing an already-extracted folder.
