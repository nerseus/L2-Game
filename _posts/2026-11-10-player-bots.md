---
title: "Player bots"
date: 2026-11-10 16:02:41 -0600
categories: [Dev Diary, Multiplayer]
tags: [bots, ai, multiplayer, teams, navmesh]
description: "Bots that play as real players: on teams, or against everyone."
# image:
#   path: /assets/img/posts/2026-11-10-player-bots.png   # 1200x630 social preview
---

<!-- Source: L2 PR #85. First pass generated from the file changes; edit freely. -->
You no longer need other people to test a match.

- **Bots are real players.** They have a character and a player slot, so nobody can tell them
  from people.
- **Team bots** fill each side. A human who picks a full side takes a bot's place.
- **No-team bots** spawn among the monsters, leave each other alone and go after team players
  and monsters. They wear yellow-tinted armor.
- **Brain levels.** Level 0 is a simple wandering fighter. Higher levels use a port of the
  original's bot behaviour.
- **They can climb and swim:** ladders have navigation links, and a swimming bot heads for the
  nearest bank.
- **Console commands:** `addBot`, `addGoodBot`, `addEvilBot`, `setBotCount` and
  `setTeamBotCount`, and `addMonster` to spawn any monster.
- **Teams** were made one source of truth: None, Evil, Good and No Team.

<!-- CLIP: a match with bots on both sides -->
