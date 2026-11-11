---
title: "The end of a round"
date: 2026-10-20 02:09:08 -0500
categories: [Dev Diary, Gameplay]
tags: [rounds, awards, gold, kill feed, scoreboard, hud]
description: "Round endings, the awards box, a kill feed, gold payouts and the pause between rounds."
# image:
#   path: /assets/img/posts/2026-10-20-the-end-of-a-round.png   # 1200x630 social preview
---

<!-- Source: L2 PR #52. First pass generated from the file changes; edit freely. -->
A round now ends properly, the way the original ended it.

## Two phases

1. **Ending** (7 seconds): the result is announced ("Good wins", "Evil wins" or "Round
   Draw") and the **awards box** shows each player's own awards.
2. **Scoreboard** (3 seconds): the scoreboard is held open.

During both, nobody can attack, reload or switch weapons, and the buy, vote and character
select menus stay shut. You can still move and look, and spectators fly freely.

## Gold

Gold is paid at the right moments, with every amount in one settings file:

- **A kill** pays 200.
- **Winning a round** pays 1,500 to each winner, **losing** pays 1,000.
- **Losing again** pays more each time, up to 2,000.
- **Ending a win streak** pays a bounty.
- Gold is capped at 20,000 and never drops below 0.

## The kill feed

The kill feed was rebuilt as L2's own, showing the weapon, both teams and yellow message
text. Deaths were cleaned up and the match message system got a pass.

<!-- SCREENSHOT: the awards box at the end of a round -->

## What's next

Things in the world: doors, chests and lifts.
