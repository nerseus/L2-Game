---
title: "Spectating, deaths and feet on the floor"
date: 2026-09-09 12:46:41 -0500
categories: [Dev Diary, Characters]
tags: [characters, animation, networking]
description: "Fixes for spectators, death animations and characters sinking into the floor."
# image:
#   path: /assets/img/posts/2026-09-09-spectating-deaths-and-feet.png   # 1200x630 social preview
---

<!-- Source: L2 PR #10. First pass generated from the file changes; edit freely. -->
A round of fixes after the new character selection.

## Spectators saw an empty level

The server only sends each player what's near them, and it works out "near" from their
character. A spectator has no character, so they were sent nothing and the level looked
deserted. Spectators now report their camera position, and the server uses that instead.

## Death animations

Characters now play one of several death animations, picked when they die. The choice is
made the same way on every machine, from the character and the moment of death rather
than a random roll, so everyone sees the same death.

## Feet through the floor

The original animations move the hips up and down to suit each pose. The animation
system doesn't apply that height, so straighter poses pushed the feet through the floor.
A small grounding step now lifts the visible body just enough to keep the feet on the
ground. It only ever lifts while alive, and lets a dying character sink all the way down.
Collision isn't affected; it's purely visual.

The character setups and their hitboxes were also tidied up.

<!-- CLIP: a death animation, seen by two players -->
