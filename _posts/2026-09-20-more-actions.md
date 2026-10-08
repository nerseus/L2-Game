---
title: "More actions"
date: 2026-09-20 07:47:23 -0500
categories: [Dev Diary, UI]
tags: [controls, hud, options]
description: "Center view, keyboard turning, live rebinds and real key hints on the HUD."
# image:
#   path: /assets/img/posts/2026-09-20-more-actions.png   # 1200x630 social preview
---

<!-- Source: L2 PR #24. First pass generated from the file changes; edit freely. -->
More of the original's controls, and a few quality-of-life fixes.

- **Center view:** one key to look straight ahead again.
- **Turn and look keys:** turn left/right and look up/down from the keyboard, at a steady
  rate scaled by your sensitivity, for anyone who played the original that way.
- **Rebinds apply immediately.** Changing a key mid-game used to need a restart to take
  effect. Now everything that reads input picks up the change straight away.
- **The weapon HUD shows your real keys.** Each slot's hint shows whatever key it's
  actually bound to, rather than a fixed 1 to 4, and grows to fit longer names like "LMB".

<!-- SCREENSHOT: weapon HUD with custom key hints -->
