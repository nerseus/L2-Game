---
title: "Characters you can play"
date: 2026-09-07 19:32:46 -0500
categories: [Dev Diary, Characters]
tags: [characters, networking, animation]
description: "The original characters become real, networked, playable fighters."
# image:
#   path: /assets/img/posts/2026-09-07-characters-you-can-play.png   # 1200x630 social preview
---

<!-- Source: L2 PR #3. First pass generated from the file changes; edit freely. -->
The characters imported last time were just models. Now they're playable.

## Networked fighters

Each of the eight characters now has its own networked agent, built on the sample's
character setup, so they can be spawned, controlled and seen by every other player.
The first converted animations went in with them: walk, run, strafe, backwards and a
90 degree turn.

## Legs that fold in half

The first test had every character's legs collapse into a heap at their feet. The cause:
foot IK is on by default, and clips that don't carry foot target curves read those
targets as zero, which drags the feet to the character's origin. Turning foot IK off for
those clips fixed it.

## A debug shortcut

To test quickly, pressing `/` and then a number from 1 to 8 respawns you as that
character. The server handles the switch so every player sees the change. It's a testing
aid only; a proper character select is on the way.

<!-- SCREENSHOT: two different classes standing side by side in the test map -->
