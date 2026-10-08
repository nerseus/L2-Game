---
title: Roadmap
icon: fas fa-road
order: 2
---

A rough guide to what's done and what's next. Order may change, and dates are
deliberately left out.

## Foundation

- [x] Unity 6 project with Photon Fusion multiplayer (server-authoritative, client-side prediction)
- [x] Play-mode iteration without domain reloads
- [x] In-game debug console and developer tools (animation debugger, pose preview, weapon browser)
- [x] Original game data tables (weapons, projectiles, players, armor) converted into editable definitions

## Characters

- [x] All six classes playable with their original models: Archer, Druid, Heretic, Paladin, Sorceress, Warrior
- [x] Good King and Evil King models imported
- [x] Upscaled character textures
- [x] Character selection (in game and from the menu), with spectating until you pick
- [x] Hitboxes per body part
- [x] Pain and death voices per character

## Movement

- [x] Walking, running, crouching and jumping
- [x] Movement matched to the original
  - [x] Movement speed
  - [x] Jumping/falling speed
  - [x] Jumping behavior (including stepping up onto ledges)
  - [x] Proper jump/crouch hitbox sizing
  - [x] Fall damage
  - [x] Slopes: walkable, too steep and sliding
  - [ ] Standing at the edge of water
- [x] Climbing volumes (ladders)
- [ ] Swimming volumes

## Camera and views

- [x] First and third person, switchable on the fly
- [x] The original's field of view, with a Field of View option
- [x] Smooth crouch camera
- [x] Aim and fire from the true eye position in first person

## Animations

Done for now: jumping, running, walking, idle, weapons (attack, reload), looking,
climbing, falling.

- [x] Original animations converted onto modern humanoid rigs
- [x] Weapon stances per weapon type, upper body blended over movement
- [x] First-person weapon models with their own idle, fidget, attack and reload animations
- [x] Deaths, including crouch deaths (one at random when killed while crouched)
- [x] Swimming animations (ready for swimming volumes)
- [ ] Winces (hit reactions), likely a different one per body part hit
- [ ] Taunts (needs a taunt key)
- [ ] Remove the death-animation test keys

## Weapons

- [x] Four-slot loadout: Advanced, Basic, Melee, Utility
- [x] All 43 weapons in, with timings and damage from the original data
- [x] Primary attacks done for every weapon:
  - [x] **Melee:** Dagger, Knife, Scimitar, Spear, Hammer, Hand Axe, Long Sword, Berserker Axe, Earthquake Hammer
  - [x] **Bows:** Bow, Bow of Carnage, Death Blossom Bow, Eye Bow
  - [x] **Crossbows:** Crossbow, Gatling Crossbow, Ice Blast Crossbow, Tracking Crossbow
  - [x] **Staves:** Staff of Sparking, Spider Staff, Fire Ring Staff, Dragon Staff
  - [x] **Rods:** Claw Rod, Charge Rod, Flare Rod, Rod of Souls
  - [x] **Wands:** Wand, Lightning Wand, Sunray Wand, Wand of Force
  - [x] **Thrown:** Throwing Axe, Throwing Knife, Gravity Axe, Secret Weapon, grenades
  - [x] **Scrolls:** Haste, Jump, Feather Fall, Invisible, Teleport, Lava Protection, Wizard's Eye
- [x] Projectile behaviours: flying, instant-hit beams, flamethrower, zoom, bounce, splash
  damage, knockback, grenades that settle and wait
- [x] Impact effects and surface-matched blast marks
- [x] Weapon sounds and icons from the original data
- [x] Ammo with automatic, timed reloads
- [ ] Proper projectiles for secondary attacks
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

- [x] Armor data in (types and body locations)
- [ ] Buy menu and skin change
- [ ] Track armor value as damage reduction

## Menus and UI

- [x] Original main menu art
- [x] Gallery of every character, monster, weapon and prop
- [x] Options: video, sound and controls
- [x] Rebindable keys (primary and alternate per action)
- [x] Weapon HUD showing your actual key bindings
- [x] Buy menu for weapon upgrades (number keys, like the original)
- [x] Loading screen with the original animations

## Worlds

- [x] First test map
- [ ] Volumes
  - [ ] Water
    - [x] Water surface mesh
    - [ ] Texture animation, scrolling, etc.
  - [ ] Lava
    - [ ] Damage
- [ ] Skyboxes
- [ ] Set up worlds from map + props, lights, etc.

## Gameplay

- [ ] Money
  - [ ] Tracking money
  - [ ] Buying
  - [ ] Awards for killing, winning/losing
- [ ] Pickups
- [ ] Rounds, scoring and match flow

## Game modes

- [ ] Princess
- [ ] Warlord
- [ ] Dragon
- [ ] Sword in Stone

## Props

- [ ] Chests: interactive open and close
- [ ] Doors: interactive open and close
  - [ ] Hinge
  - [ ] Rotate
  - [ ] Slide

## Later

- [ ] Closed playtests
- [ ] Public builds
