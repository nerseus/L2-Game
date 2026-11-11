---
title: "Fixing lightmaps and detail textures"
date: 2026-10-28 08:06:25 -0500
categories: [Dev Diary, Art]
tags: [lightmaps, textures, conversion]
description: "A small fix to lightmap and detail texture conversion."
# image:
#   path: /assets/img/posts/2026-10-28-fixing-lightmaps-and-detail-textures.png   # 1200x630 social preview
---

<!-- Source: L2 PR #62. First pass generated from the file changes; edit freely. -->
A short one: lightmaps and detail textures weren't coming through conversion quite right on
some maps.

- Lightmap baking was corrected.
- Detail textures were read properly.
- Artwork smoothing on converted images was fixed.
- A few conversion tweaks for testing.
