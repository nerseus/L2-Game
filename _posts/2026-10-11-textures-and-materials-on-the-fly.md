---
title: "Textures and materials, built on the fly"
date: 2026-10-11 15:49:14 -0500
categories: [Dev Diary, Conversion]
tags: [conversion, textures, materials, rendering, tools]
description: "Every texture in the install converted, and materials built from plain data instead of saved assets."
# image:
#   path: /assets/img/posts/2026-10-11-textures-and-materials-on-the-fly.png   # 1200x630 social preview
---

<!-- Source: L2 PR #37. -->
After the interface art, the next job was the big one: every texture in the install, and the
materials that decide how each one is drawn.

## Textures

The original's DTX textures are converted into a textures pack. A texture's header carries more
than pixels (what kind of surface it is, how it's scaled in the editor, detail-texture
settings), so that's kept too, as notes on the pack entry.

One subtle thing: the original's alpha isn't always transparency. Plenty of skins carry an
alpha channel that's just noise, and a texture marked as full-bright uses alpha to mark its
glowing pixels. A texture is only treated as transparent when its header actually asks for it,
and a short list covers the few that can't be worked out from the file alone.

## Materials as data

A material isn't an asset here. It's a small record saying which texture to use and how to draw
it, and the game builds the real material from that when it needs it.

Every material has a **key**: the texture's path, followed by any options in a fixed order.

```
TEXTURES/LEVELTEXTURES/WATER/WATER1.DTX                  the texture as-is
TEXTURES/LEVELTEXTURES/WATER/WATER1.DTX#alpha0.7         at 70% opacity
SKINS/PROPS/LANTERN1.DTX#transparent#chrome              alpha used, environment mapped
```

The same texture used two ways is two materials, and a map always finds the one the converter
made for it, because both build keys in the same place. A small set of template materials ship
with the game, one for each combination of lighting and blending, so the shader variants they
need are never stripped from a finished build.

The converter works out which materials to make by scanning how the maps use things: surfaces
and their flags, water and lava volumes, props and their skins, and the world's sky and
environment settings.

## Effects and models

- **Effect textures** that the original made by turning or laying out another texture, such as
  a trail rotated to run along a bolt, or a sprite's frames in a grid for a particle system,
  are produced from the originals by a fixed recipe, and match the ones the effects were
  originally built with pixel for pixel.
- **Models and their skins.** A table of which model wears which skin is written during
  conversion. Some pairings aren't in any data file, because the game's code chose them, so
  those are listed separately and any missing file is reported.
- **Readers for the rest.** Readers for the original's model (ABC) and world (DAT) formats
  came across from the converter project. They only read for now; building from them comes
  next.

<!-- SCREENSHOT: a gallery of converted textures -->

## What's next

Sounds, then the first map.
