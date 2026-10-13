---
title: "Art from your own install"
date: 2026-10-10 13:48:56 -0500
categories: [Dev Diary, Conversion]
tags: [conversion, art, ui, tools, content]
description: "The first step of building the game from your own copy of the original: the interface art."
# image:
#   path: /assets/img/posts/2026-10-10-art-from-your-own-install.png   # 1200x630 social preview
---

<!-- Source: L2 PR #36. -->
Until now, L2 has been built out of files taken from the original game and checked into the
project. That ends here. From this change on, L2 **reads the original files from your own
install** and builds what it needs when it runs, so no converted content has to ship with the
game.

The interface art is the first thing to move over, and it's the proof of concept for
everything that follows.

## How it works

- **A folder next to the game.** Converted content goes into an `L2Assets` folder beside the
  game. Locally it's kept out of the project's source control.
- **Packs.** Content is saved into a pack file with a small index at the end (path, type,
  size, notes). Packs are plain C#, so they can be built and read in a finished game, not just
  in the editor. They also stream to disk, so memory stays flat however big a pack gets.
- **Files by path.** Code asks for `ART/HUD/HEALTH.PCX` and gets the picture. A loose file
  placed in the folder in the same spot wins over the pack, which is how mods will replace a
  single file without touching the rest.
- **PCX in, PNG out.** The original art is PCX. A new decoder handles the formats it uses, and
  every picture is saved to the pack as a PNG. The original's transparent colour (pure cyan)
  becomes real transparency along the way.
- **A conversion report.** Each step logs files found, converted and failed, bytes read and
  written, and how long each part took. Those timings will decide what later steps have to
  cache.

## Menus that load their own art

An `ArtworkSprite` component shows a picture on a UI image by its path. It works in the editor
as well as in play mode, so menus look right while you're designing them, and nothing converted
is ever saved into a scene or prefab. Buttons keep their hover and pressed pictures too.

Weapon, armor and character definitions got icon paths in the same way, and the loading
screen's sword animation loads its frames by path.

Once everything was wired up, the old picture files were deleted from the project: roughly 350
images, and a lot less clutter in the repository.

## Two things that went wrong first

- **White buttons.** A button's hover art is shown through a slot that the button itself clears
  when it returns to normal, which wiped the converted art along with it. In play mode the
  picture now goes on the image itself, underneath the button's effects.
- **A 10-second pause opening the gallery.** The gallery's list of pages pointed at every
  character, monster and weapon model, so touching the list loaded all of them. The list now
  holds only the text, and each page loads its own model in the background when you get to it.
  It opens straight away.

<!-- SCREENSHOT: the main menu, running entirely from converted art -->

## What's next

Textures, sounds and the first map, all read from the install the same way.
