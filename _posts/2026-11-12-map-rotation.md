---
title: "Map rotation"
date: 2026-11-12 14:42:13 -0600
categories: [Dev Diary, Maps]
tags: [map rotation, host screen, voting, bots, navmesh]
description: "Hosts can pick a list of maps to play in turn, in order or at random."
---

<!-- Source: L2 PR #88. First pass generated from the file changes; edit freely. -->
A host can now set up a **map rotation**: the maps a game plays in turn.

- **Pick several maps** on the Host screen's World List. Click to select, Ctrl+click to add or
  remove one, Shift+click for a range, Ctrl+A for all, and Delete to drop one. A map can be in
  the list more than once.
- **Sequential or Random:** when a map change isn't a vote, the next map is either the next one
  in the list or any one at random.
- **The Vote menu** only offers the rotation's maps. Voting for the map being played restarts
  it.
- With no rotation, the map being played is the whole rotation.

The World List also got a proper scrolling panel.

## Planning better bot navigation

Bots still get stuck in a few places on some maps, and the fixes so far have been one map at a
time. A plan went into the to-do list for a proper fix:

- a test that runs bots between hundreds of random points on each map and measures how often
  they arrive,
- typed links in the navigation data (ladder, drop, jump, swim out, door), each with its own
  little routine for getting across,
- and one owner for the bot's final move, instead of several pieces of code taking turns.
