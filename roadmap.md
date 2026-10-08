---
layout: page
title: Roadmap
permalink: /roadmap/
---

A rough guide to what's done and what's next. Order may change, and dates are
deliberately left out.

# L2 TODO

## Weapons

- [ ] Implement proper projectiles for secondary attacks
  - [ ] Death Blossom Bow
  - [ ] Eye Bow
  - [ ] Gatling Crossbow
  - [ ] Ice Blast Crossbow
  - [ ] Tracking Crossbow
  - [ ] Charge Rod
  - [ ] Flare Rod
  - [ ] Rod of Souls
  - [ ] Wand
  - [ ] Gravity Axe
  - [ ] Secret Weapon
  - [ ] Fire Ring Staff
  - [ ] Staff of Sparking
  - [ ] Scrolls

## Armor

- [ ] Implement buy menu and skin change
- [ ] Track armor value as damage reduction

## Movement

- [x] Climbing volumes
- [x] General movement closer to LOMM
  - [x] Movement speed
  - [x] Jumping/falling speed
  - [x] Jumping behavior
  - [x] Proper jump/crouch hitbox sizing
  - [ ] Standing at edge of water (Wedding Day water edges)
- [ ] Swimming volumes

## Animations

Done for now (2026-10-06): jumping, running, walking, idle, weapons (attack, reload), looking, climbing, falling.

- [ ] Winces (hit reactions) - `Wince0`-`Wince6`, likely a different one per body part hit; LOMM also names `WinceAir` / `WinceWater`
- [x] Swimming - `swim`, `swimreverse`, `standwater` (with swimming volumes)
- [ ] Taunts - `taunt1`-`taunt3` (needs a taunt input)
- [x] Crouch deaths - `CrouchDie1` / `CrouchDie2`, one at random when killed while crouched
- [ ] Remove the death-animation test keys (7-9, [ ]) - `AgentSelectionController`, `Health.RPC_TestDeath`, `Player.RPC_TestSpectate`, `DeadState` restart

## Worlds

- [ ] Volumes
  - [ ] Water
    - [x] PolyGrid
    - [ ] Texture animation, scrolling, etc.
  - [ ] Lava/Kato
    - [ ] Damage
- [ ] Skyboxes

## Gameplay

- [ ] Money
  - [ ] Tracking money
  - [ ] Buying
  - [ ] Awards for killing, winning/losing
- [ ] Pickups
- [ ] Set up world from map + props, lights, etc.

## Game Modes

- [ ] Princess
- [ ] Warlord
- [ ] Dragon
- [ ] Sword in Stone

## Prop Scripts

- [ ] Chests - interactive open and close
- [ ] Doors - interactive open and close
  - [ ] Hinge
  - [ ] Rotate
  - [ ] Slide
