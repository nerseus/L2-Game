---
title: "Play-test fixes and a server browser"
date: 2026-11-23 13:25:10 -0600
categories: [Dev Diary, Multiplayer]
tags: [server browser, dedicated server, bots, console, play testing]
description: "A join screen with a server list, a live server console, and fixes from the first play tests."
---

<!-- Source: L2 PR #93. First pass generated from the file changes; edit freely. -->
The first real play tests turned up plenty to fix.

## Server browser

The join screen now works like the original's:

- **Your name** at the top (click to change it), the region, and Play Offline, Host Game and
  Refresh.
- **The game list:** name, map, players, ping and game type.
- **The selected game's** players and rules, published by its host.

## Dedicated server

- **A live server screen** in the console window: the session, the map, the round, the clocks
  and the players.
- **Connection logging:** links to the cloud dropping and coming back, why a session stopped,
  and whether each player connects directly or through a relay. A server that loses the cloud
  restarts itself once its players have gone.
- **A log file** for each run.
- **`setMap <map>`:** ends the round in a draw and changes to another map in the rotation.

## Bots and maps

- **Gaps in slatted bridges and grates** are filled for navigation, so bots can cross them.
  Temple of Bark's bridge to the sword's island used to cut it off completely.
- Many bot fixes to movement, looting and weapons.

## Also

- Fixes to doors, armor, corpses, pain sounds (one played before the death), knockback, the
  field of view and first-person weapons.
- The issues found go into a new list, now on the [Issues]({{ '/issues/' | relative_url }})
  page.
