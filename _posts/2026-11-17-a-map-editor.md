---
title: "A map editor"
date: 2026-11-17 05:45:12 -0600
categories: [Dev Diary, Tools]
tags: [map editor, lightmaps, props, destructibles, custom maps]
description: "Edit the converted maps, add geometry and props, relight them and share them as a pack."
---

<!-- Source: L2 PR #91. First pass generated from the file changes; edit freely. -->
L2 now has a **map editor** inside Unity (**L2 > Map Editor**).

- **Edit scenes:** copy any converted map into its own scene, as a new map with its own name.
  Building it writes the map beside the game's data, and it shows up in the map list.
- **Only changes are saved.** Each object remembers where it came from, so the loader's own
  fix-ups are never applied twice.
- **Objects:** add any of the original's object classes, picked from a class tree, with a
  thumbnail grid of models and a picker for each skin. The inspector only shows the properties
  L2 actually reads.
- **Geometry:** split the original's pieces and keep their textures lined up, or add new
  shapes with any converted material on each face.
- **Lightmaps:** relight the whole map, old and new geometry together, with L2's own baker.
- **Make Destructable:** turn a prop or a piece of wall into something that breaks, with a
  debris type and health.
- **Play** builds the map and plays it straight away.
- **Export to a pack**, to share the map as one file.

## Props that land properly

The editor shows where the game will put each prop, and marks it red when the game can't drop
it. Props that start partly inside a wall no longer fall until pushed free, and one whose
centre is inside the floor is lifted onto it.
