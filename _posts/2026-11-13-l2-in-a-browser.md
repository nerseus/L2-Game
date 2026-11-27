---
title: "L2 in a browser"
date: 2026-11-13 22:34:04 -0600
categories: [Dev Diary, Tools]
tags: [web build, webgl, credits, field of view, ui]
description: "A web build that joins a desktop host, plus a Credits screen and a new look for the menus."
---

<!-- Source: L2 PR #89. First pass generated from the file changes; edit freely. -->
L2 now has a **web build**. It ran as a client in a browser, joined to a game hosted on Windows.

## How it works

- **The game fills the browser window**, and fullscreen works as you'd expect.
- **Keyboard lock:** in fullscreen on Chrome and Edge, every key goes to the game, so Ctrl+W
  doesn't close your tab mid-fight.
- **Game data downloads once** and is kept in the browser's storage. Later visits only check
  whether anything changed.
- **Browsers are clients only.** A desktop (or a server) hosts the game.
- A few rendering fixes for the web: animated sprites that came out white, and decals that
  broke the sky on the lower quality settings.

Still to do: memory use (the browser keeps all the data in memory while playing) and smaller
sound files.

## Also

- **A Credits screen.** In the browser, Exit shows it, since a web page can't quit.
- **A new brown theme** for the menus: background, borders and headers.
- **Field of view:** an option for the original's slightly squeezed picture, and very wide
  screens are capped at 21:9's view so 32:9 isn't a fisheye.
- **Weapon arm time:** a weapon can fire once its "arm" animation has played, the same on
  every computer.
- **Hit direction** markers on the HUD.
- **A death floor** below every map, and a `killBot` console command.
- **Buy menu options:** the host decides whether Haste, Invisible and the Secret Weapon can be
  bought.
- First-person shots now fly from the weapon's muzzle to the crosshair.
