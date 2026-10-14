---
title: "Lighting the world: lightmaps"
date: 2026-10-14 10:47:30 -0500
categories: [Dev Diary, Conversion]
tags: [conversion, lighting, lightmaps, maps, console, rendering]
description: "A custom lightmapper bakes each map's lighting when it's converted, aiming to match the original and improve on it."
# image:
#   path: /assets/img/posts/2026-10-14-lighting-the-world.png   # 1200x630 social preview
---

<!-- Source: L2 PR #42. Bake timings and notes from the video's description. -->
The converted maps were lit flat. Now every map gets its own **lightmaps**, baked when the map
is converted from your install. The baker is our own, built to mimic what the original engine
produced and, where it can, improve on it.

{% include embed/youtube.html id='40__Y6LBtoY' %}

The video shows a bit of the lightmapping being built, plus a couple of console commands
remade along the way: `brightness`, and `lmfullbright` to switch the lightmaps off and look at
the world without them.

## What goes into a lightmap

- **Lights are data.** Every light in a map (point lights, glowing lights, directional lights,
  the sun, the lights that only light models) is read the way the original's own tools read
  it: a colour scaled by its brightness, a radius over which the colour fades from an inner
  colour to an outer one, and for directional lights a cone. Whether a light casts shadows is
  a property of the light too.
- **Ambient light sets the floor.** Each map names an ambient colour, and every patch of
  lightmap starts there, so it's the darkest a lit surface gets. It's 15 on Wedding Day and
  much brighter on others.
- **Lights add up.** Each light in range adds its colour at that distance, unless a wall is in
  the way. The sun adds light wherever the sky is open above. The total is clamped and
  multiplied into the texture.

## Matching the original

No source survives for the original's lighting, so the falloff was fitted to evidence: the
vertex colours its own tool wrote into every map. A simple fade from the inner colour to the
outer one reproduces them to within a couple of levels on some maps and 6 to 18 on the rest.
The later engine's falloff and a few other obvious guesses all fit worse.

One thing that turned up: on some maps the big fill lights have the *same* inner and outer
colour, which is flat light across their whole radius. That's what lights Wedding Day's
outdoors.

## Where it goes beyond it

- **Soft shadows.** The original's vertex colours have no shadows at all, but its lightmaps
  clearly do (Wedding Day's haystacks). Full-strength shadows were far too dark, so shadows
  take away only part of a light, and each shadow ray aims at its own point on a small disc
  around the light, so edges soften with distance.
- **Smooth edges.** Several rays per texel, so a shadow edge shades the texels it crosses
  partly, instead of stepping between full light and full shadow.
- **Round glows.** Like the original, light is sampled at texel corners and averaged, so a
  torch glow comes out round and reaches a bit past its radius.
- **Tree-trunk shadows.** The invisible brushes the designers built around trees cast shadows,
  as they appear to in the original. The models themselves don't, as in the original.
- **Falloff options.** Six falloff curves are in for trying out, including the original's, a
  gaussian and a quartic, along with a highlights curve and a bleed past each light's radius.

Every polygon gets its own patch of texels, about the size of the map's own lightmap grid.
The patches are packed into pages, saved into the map's pack, and the map's geometry stores
where each vertex sits in its page.

## Bake times

Shadow quality is a count of rays per texel along each axis, so the work per light goes up as
1, 4, then 9 rays. The timings so far:

| Shadow samples | Bake time |
|---|---|
| 1 | 82 seconds |
| 2 | 287 seconds (4.7 minutes) |
| 3 | 605 seconds (10 minutes) |

The baker is plain C# and runs across threads, so it works in a finished game as well as the
editor. The player waits once, behind a progress bar, instead of on every load. The baked
lightmaps have many parameters and still need adjusting.

## Lighting in the game

- **The world is lit by its lightmaps alone.** The map's lights are real only where they have
  to be: the sun, and the lights meant for characters. Characters and props are lit by those
  real lights and ignore the lightmaps.
- **Brightness.** A new brightness setting raises the final image the way the original's gamma
  ramp did. It's a slider in the video options and the `brightness` console command.
- **`lmfullbright`.** Turns the lightmaps off and on, to see what a map looks like without
  them.

## Also in this change

A water surface made of a sprite sheet, like Wedding Day's, now cycles through its frames at
the sprite's own rate.

## What's next

- Lighting for characters and props from the map's own lights. The likely answer is a baked
  grid.
- The light a torch gives off.
- Lightmaps on doors and other moving geometry, and animated lights.
- Side by side comparisons with the original, to tune the parameters.
