---
layout: post
title: "Old bones, new engine"
date: 2026-09-15
# image: /assets/images/2026-09-15-old-bones.png
---

The original characters came with their animations: idles, runs, sword swings, deaths.
Getting them to play on a modern character rig turned out to be the hardest part of
the project so far, and the most satisfying.
<!--more-->

## The problem

Modern engines like a "humanoid" skeleton: a standard set of bones they can share
animations across. The original game's skeletons predate that idea. They had their own
naming, their own units and their own quirks. A converter had to translate each
animation, bone by bone, into the modern format.

Every bug looked *almost* right, which made them hard to find:

- **Nothing moved.** The first conversion "succeeded" but produced a statue. The old
  bone names used spaces and the imported ones used underscores, so not one bone
  matched. The converter now counts matched bones and complains loudly.
- **Everyone was eight centimetres short.** The old game measured distance in its own
  units. A flat conversion factor left every character slightly sunk into the floor, so
  the scale is now measured per animation.
- **Twitching joints.** The old data stored some rotations "upside down" between
  frames, which looks fine at a keyframe and wrong in between. Flipping them back fixed
  it.
- **Hands that wouldn't grip.** The original hands have two fingers (a thumb and a
  mitten), and modern rigs expect five. The fingers now skip the humanoid system and
  play the original motion directly.

<!-- CLIP: before/after of a sword swing -->

## Seeing it the way it was

The other half of looking right is the camera. Matching the original's field of view
meant recreating a screenshot from the old game shot for shot: same map, same spot,
same angle. It turns out the old engine squashed the vertical view slightly, a quirk
that a single modern FOV setting can't reproduce. Small details like that are a big
part of why the old game *felt* the way it did.

<!-- SCREENSHOT: side by side, original vs L2, same view -->
