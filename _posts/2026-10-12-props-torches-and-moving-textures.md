---
title: "Props, torches and moving textures"
date: 2026-10-12 20:27:08 -0500
categories: [Dev Diary, Conversion]
tags: [conversion, models, props, effects, collision, torches]
description: "Models placed in converted maps, with the original's collision, flickering flames and scrolling surfaces."
# image:
#   path: /assets/img/posts/2026-10-12-props-torches-and-moving-textures.png   # 1200x630 social preview
---

<!-- Source: L2 branch convert-models-place-simple-props (not merged yet when this was written). -->
The converted maps were bare. Now the props are back: trees, crates, thrones, torches and
candles, placed the way the original placed them.

<!-- CLIP: props, torches and candles in a converted map (YouTube) -->

## Models

Every model in the install is converted into a models pack. Each one is stored as a mesh per
piece, in its default pose. The original never showed a model's bind pose. A model starts on
its first animation, first frame, so that's what's stored. Pieces are never merged, since the
animation data names them (to hide or show one, for example).

Models don't carry skins. Whatever shows a model supplies its materials, such as a prop's skin
in the map.

## Putting them in the right place

The original's object code doesn't survive, so placement was worked out by measuring all 20
maps: every prop, and which rule put it on a floor or under a ceiling.

- **Props, chests and candles** are raised from the object's position by half the height of
  their box *before* it's scaled, then scaled about their middle. That lands Wedding Day's
  scaled-down trees on the grass and the larger-than-normal furniture on the floor. Lifting by
  the scaled height instead leaves the trees about 2 m underground and the furniture floating.
- **Torches, wall torches and braziers** use the object's position as the model's origin, with
  no lift. Measured that way, 30 of 88 braziers stand exactly on the floor. None did the other
  way.
- **Hung props** like bells, hanging bowls and banners are detected by their top meeting a
  ceiling, and hang flush under it instead of poking through.

## Collision, as the original had it

- **Solid props** are blocked by the object's box, sized from its animation data and always
  aligned to the world, however the prop is turned. Walk into a rotated crate and you slide
  along an unrotated box. A setting swaps this for a box that turns with the prop.
- **Non-solid props** such as trees, cots and carriages block nothing themselves. The level
  designers built invisible brushes around them in the map instead: a tall pillar through each
  tree trunk, a slab on each cot. Those brushes were consistent per model and turned with the
  prop, so they moved onto the models as collider variants, and the maps leave them out. One
  tree needs a pillar 12.8 m tall on one map and 6.4 m on another, so a model can carry several
  variants, and each placement records which is its own.

## Fire

No source survives for the original's client code, so the flames were decoded from the game's
own binary.

- **Candles** draw a flame sprite and a soft glow at the model's flame socket. The flame's
  size twitches slightly every frame. Candelabras have three flames and chandeliers four.
- **Torches and braziers** draw four sprites stacked one above the other at the model's fire
  socket. The original cut one 60-frame flame into four 15-frame pieces to build them.
- A second kind of fire, a particle system, isn't decoded yet and is drawn the same way for now.

Still to come: the light a torch gives off, and its looping crackle.

## Moving textures

Some world surfaces pan or rotate. The panning is decoded from the engine itself, and it turned
out to depend on how the texture is scaled on that surface. One speed for every surface was
wrong: Secrets of the Sphinx's sand stream would have run 28 times too fast. Each surface now
scrolls at the rate its own scale demands.

One surface rotates (a full turn takes an hour) and isn't reproduced. No map uses the third
effect, a warble.

## Transparency fixes

- A world object's texture that's marked transparent on any face is transparent on all of its
  faces, so a set of iron bars with one flagged face now reads as bars everywhere.
- Level textures without a transparent flag are drawn solid, even when their alpha channel
  would have made holes.
- Destructible objects now show their models.

## What's next

The level still has no lights, doors or ambient sound. The to-do list counts what the maps place
that only gets a placeholder: about 4,400 AI rails, 1,900 lights, 1,100 directional lights,
roughly 500 doors and nearly 400 ambient sounds across all 20 maps.
