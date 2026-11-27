---
title: Issues
icon: fas fa-bug
order: 2
collapsible_sections: true
---

Known issues from play testing and the dedicated server's logs. Items are removed once
they're fixed.

<p class="roadmap-controls"><a href="#" onclick="document.querySelectorAll('details.roadmap-section').forEach(function(d){d.open=true;});return false;">Expand all</a> &middot; <a href="#" onclick="document.querySelectorAll('details.roadmap-section').forEach(function(d){d.open=false;});return false;">Collapse all</a></p>

<!-- Source: L2IssuesList.md in L2 PR #95. -->

## Dedicated Server

- The server tries to load and play ambient sounds, though it has no audio. It shouldn't
  load sounds at all.
- Kill-feed and join lines are written to the server log with their colour tags still in.
- A player can show up as `?` in the log when they connect, before their name is known.

## Maps

- Blood Feud
- Chateau Escape
- Cult of the Spider
- Dragonblade
- Dragon Slayers
- Dungeon Rescue
- Dungeons of Dragadune
- Fahltee Tower
  - Can't jump from the chains to the upper level
- Forgotten Keep
- Gauntlet
  - Can't climb the wooden ramps near the sword and exit?
- Hideout
- Isle of Fire
- On the Run
- Rescue at the Ruins
- Secrets of the Sphinx
  - The Death Blossom Bow can't explode on the ceiling near the sword, but should
  - The chest near the evil base sits a little too low: open, you can see the ground inside it
- Spider's Den
- Stoneham
- Sword in the Stone
- Temple of Bark
  - The chest at the top of the evil base's ladder sometimes puts its item through a wall

## Exceptions and Misc. Issues

- After the map changes from Rescue at the Ruins to Temple of Bark, the Princess keeps
  thinking for a moment after she's gone, and logs errors.
- A few flame and torch sprites on Rescue at the Ruins and Temple of Bark aren't converted.
- Most Options menus are still green. They should be brown, like the rest.
- When a new match starts, Tab should show the match time in the upper right. It shows
  "Loading..." for now.
- Dead or spectating, the round timer and your gold shouldn't show at the bottom. With
  Tab's scoreboard open, the bottom bar should hide and the timer and gold show instead.
- Server list (join screen): the player list should include players and team bots, but
  not no-team bots.

## Gameplay

- Monsters like the Lizardman shoot over your head when you crouch. They need better
  targeting.
- Blood Feud: the Gargoyle doesn't play its death animation.
- The Sunray Wand's projectile seems too fast.
- The visual "slope" of shots in first person.
- You can't drop a weapon during its reload animation, but should be able to.
- Weapon sounds carry much further than they should, even above, below or into other
  areas.
- The Druid's Dragon Staff secondary fire didn't break a crate.
- Add an Auto-Balance option for teams.

## Bots

- At the start of a round a bot bought a new weapon: the old one's drop sound played, but
  the weapon wasn't there.
- Blood Feud: bots get stuck under the long bridge on the good side.
- Fahltee Tower: bots can't walk where the gate falls (the Princess too). They need to.
- Fahltee Tower: bots often get stuck in the water. They should jump the walls to get out.
- Spider's Den: bots in the good base can't climb the ropes.
- Temple of Bark: bots get stuck, and shoot through walls.
- Temple of Bark: bots get stuck on the two-level ladder.
