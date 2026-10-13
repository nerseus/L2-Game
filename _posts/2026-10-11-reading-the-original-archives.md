---
title: "Reading the original archives"
date: 2026-10-11 18:36:47 -0500
categories: [Dev Diary, Conversion]
tags: [conversion, archives, audio, tools]
description: "Conversion now reads a real install, packed archives and all, and decodes the music itself."
# image:
#   path: /assets/img/posts/2026-10-11-reading-the-original-archives.png   # 1200x630 social preview
---

<!-- Source: L2 PR #39. -->
So far the converter needed the original game's files already extracted into a folder. This
change lets it read the game the way it's installed.

## REZ archives

The original keeps most of its content in REZ archives. A new reader opens one by reading only
its directory, and pulls out a single file when asked, so even a big archive opens quickly.

An install is a stack of layers. The game's own resource list says which archives to read, and
in what order. Files loose in the data folder override the archives, and the music folder sits
alongside. The converter walks them in that order, so a loose file wins over an archive, as it
did in the original. For any other folder (an extracted copy, a map editor's project) it reads
the loose files first, then every archive beside them.

The data names files in every casing and with either slash, so every path is turned into the
file's real one before it's used. Keys and pack entries always use one spelling.

## Music, decoded

Music is no longer copied around as loose MP3 files. It's decoded to plain audio during
conversion with **NLayer**, a small, fully managed MP3 decoder (MIT licensed) that needs no
audio device and runs in a finished build as well as the editor. Music then lives in the sounds
pack like any other sound.

The same decoder handles the sounds in some custom maps, whose WAV files secretly wrap MP3.

<!-- SCREENSHOT: the conversion report for a full install -->

## What's next

The first map.
