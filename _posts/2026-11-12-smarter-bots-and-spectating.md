---
title: "Smarter bots, and better spectating"
date: 2026-11-12 11:24:09 -0600
categories: [Dev Diary, Multiplayer]
tags: [bots, ai, spectator, game options, player names]
description: "A new bot brain with skill levels and personalities, three spectator cameras and player names."
---

<!-- Source: L2 PR #87. First pass generated from the file changes; edit freely. -->
The bots got a new brain, written from scratch. None of the original's bot scripts are used.

## Skill, from 1 to 10

One setting, **Bot Skill**, scales everything a bot can do: reaction time, how far it sees and
hears, how long it remembers you, how fast it turns, how its aim settles, how well it leads a
moving target, dodging, strafing, cover, tactics and shopping. Every ability runs in a straight
line from its level-1 value to its level-10 value.

So bots don't all play alike, each one also plays up to ¾ of a level above or below the
setting, and each ability gets its own small random nudge. `setBotSkill n` changes it mid-game.

## Four personalities

Each round, every side's bots are dealt an even mix of four personalities:

| | Plays like |
|---|---|
| **Chaser** | Straight in, and keeps pressing |
| **Ambusher** | Plays back from cover, heads you off, guards |
| **Flanker** | Comes in from the side nobody's covering |
| **Drifter** | Unpredictable. Goes for loot and wounded enemies |

*Skill is how well a bot does something. Personality is how much it wants to.*

## How a bot decides

Several times a second each bot scores its options (fight, hunt, investigate, take cover,
retreat, loot, play the objective, escort a human teammate) and picks the best, with a little
noise so it isn't predictable. Whatever it's doing, an enemy in sight gets shot at.

- **Weapons:** bots read every weapon's damage, timing, range and blast from its data, so a new
  weapon needs no bot code. They pick the best one for the distance, use most secondary
  attacks, and won't fire an explosive at a wall in their face.
- **Shopping:** once a round they buy the best armor and weapon pair they can afford, then
  scrolls (Haste, Invisible, Teleport, Lava Protection), and they use them at sensible times.
- **Objectives:** each side gets attackers, defenders and roamers for the Princess, the Sword
  in the Stone, the Warlord and the Dragon.
- **Movement:** water is just slower ground, lava is avoided unless nothing else gets there,
  and every step is checked for ledges that would hurt.

## Spectating

Spectators and the dead now have three cameras, cycled with Jump:

- **Ghost:** fly freely, and jump to any player's view.
- **Chase:** follow a player, looking around freely.
- **Locked Chase:** watch through a player's own third-person view. A game option can force
  this for everyone (and the dead then only watch their own team).

## Also

- **Player names** above heads, and a `playername` console command. Two players with the same
  name show as "Name (1)", "Name (2)".
- **Wizard's Eye Always On** option: the radar shows everyone.
- **Walk/run toggle.**
- **Better monster spawning**, from proper spawn spots.
- Fixes to lightmaps, gravity, friendly fire, ammo on pickups, invisibility on death, and damage
  to destructibles.

<!-- CLIP: bots of each personality in a round -->
