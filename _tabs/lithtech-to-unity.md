---
title: Lithtech to Unity
icon: fas fa-right-left
order: 2
---

L2 is built from the original game's own assets, so the first job was getting them out of
the old Lithtech engine formats and into Unity. **Lithtech to Unity** is a set of converters
that does exactly that.

It's a Unity project (Unity 6.x, URP, C#) that converts Lithtech assets (DTX, ABC, DAT,
SPR and WAV) into Unity assets: textures, materials, meshes, animation clips and prefabs.

## What is it for?

It's a **one-time conversion** of Lithtech assets into Unity assets, to use for reference
and as a starting point in a game engine. It isn't a runtime converter, and it isn't meant
to be part of a game's asset pipeline.

## How it's used

The converters add a few entries to Unity's **Tools** menu:

- **Generate All Assets (fast)**
- **Generate All Assets (slow - recreate)**
- **Test All**

To run a conversion:

1. Open the project in Unity.
2. Point the converter at the root folder of the game's files. They need to be extracted
   from their archives first.
3. Run **Tools → Generate All Assets (slow - recreate)**. A progress bar shows each step,
   and the whole run takes a few minutes.
4. The converted assets are written into the open Unity project.

**Fast vs slow:** the slow option always recreates every asset, overwriting what's there.
The fast option reuses sounds, textures and materials that were already converted, and
only rebuilds the models and worlds that use them. It won't pick up new files of those
types, but it saves a lot of time and disk churn while debugging model and world
conversion.

## Engine support

The only fully supported version of Lithtech is the one used by the original game: a
version of Lithtech 2.0 that was never fully released. Much of the code can read other
versions' world and model formats, but no attempt has been made to support other games.

The project started as a fork of
[DAT-Reader](https://github.com/burmaraider/DAT-Reader), which could read worlds, some
sounds, and some models and textures. The goal of this fork was to fully convert
everything the original game uses.

## What gets converted

### Sounds (WAV)

- Imported as-is and made available to Unity.
- Always set to loop, for now.

### Textures (DTX)

- Every DTX file becomes a PNG texture. Many variations of the format are supported.
- Some texture flags carry over to the material, such as transparency and specular.
- A default material is created for each texture. Variations can be created later,
  since worlds can set their own transparency, blending and so on.

### Sprites (SPR)

- Read in, and used to help match the texture references in worlds to models.

### Models (ABC)

What's read:

- Meshes, skeletons and levels of detail (LODs).
- Bone animation (position and rotation).
- Morph animation (vertex animation), as blend shapes.

What's created:

- **Meshes:** one per piece per LOD, as standalone assets. The code can combine meshes,
  but keeps them separate so morph animation still works.
- **Animation clips:** one per animation, using the model's own timings, driven by bone
  rotations and positions, or by blend shapes for morph animation.
- **A prefab per model**, containing:
  - A parent object with an LOD group and the animations.
  - An optional **humanoid avatar**, for models with biped bone names. The animator is
    only there to hold the avatar. Games are expected to bring their own animation setup.
  - The full skeleton, as nested objects.
  - A "Visual" object grouping one skinned mesh per piece per LOD (for example, 7 pieces
    with 3 LODs gives 21 skinned meshes).
- **Textured prefabs:**
  - If worlds reference the model with textures, the prefab gets those materials. Different
    texturings create one prefab each.
  - Otherwise, if a texture shares the model's name, that texture is used.
  - Otherwise, a "Missing" texture is applied.
  - Hand-made mappings cover models like the player characters and some props.

### Worlds (DAT)

The maps. Each world becomes a mesh and a prefab containing:

- The world geometry and its materials.
- Every model, placed with the right position, rotation and scale.
- Lights.
- Sounds, fading with distance from the player using the world's own data. They all loop
  for now.
- World objects, which are easy to extend with extra data a game engine might need.

## Still to do

- Transparency fixes
- Sprites as real Unity objects that cycle through their frames
- Cleaner skybox generation (currently fixed, pre-converted textures)
- Faster re-runs, especially for models and worlds (only audio, textures and materials
  skip work today)
- Better grouping of world geometry and world objects
- Scripts on some objects to keep their original world properties
- Lower priority, nice for reference but unlikely to be needed in a game:
  - Importing gibs
  - Better mesh merging, which would need the morph animation data merged too

Progress on these is also tracked on the [roadmap]({{ '/roadmap/' | relative_url }}).
