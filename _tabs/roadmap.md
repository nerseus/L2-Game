---
title: Roadmap
icon: fas fa-road
order: 1
collapsible_sections: true
---

A rough guide to what's done and what's next. Order may change, and dates are
deliberately left out. Click a section to expand it.

<p class="roadmap-controls"><a href="#" onclick="document.querySelectorAll('details.roadmap-section').forEach(function(d){d.open=true;});return false;">Expand all</a> &middot; <a href="#" onclick="document.querySelectorAll('details.roadmap-section').forEach(function(d){d.open=false;});return false;">Collapse all</a></p>

## Foundation

- [x] Unity 6 project with Photon Fusion multiplayer (server-authoritative, client-side prediction)
- [x] Play-mode iteration without domain reloads
- [x] In-game debug console and developer tools (animation debugger, pose preview, weapon browser)
- [x] Original game data tables (weapons, projectiles, players, armor) converted into editable definitions

## Lithtech to Unity

The [converter]({{ '/lithtech-to-unity/' | relative_url }}) that turns the original game's
files into Unity assets.

- [x] Sounds (WAV) imported for Unity
- [x] Textures (DTX) converted to PNG, with default materials
- [x] Sprites (SPR) read, to help match textures to models
- [x] Models (ABC)
  - [x] Meshes, one per piece per level of detail
  - [x] Skeletons
  - [x] Bone animation (position and rotation)
  - [x] Morph (vertex) animation as blend shapes
  - [x] Humanoid avatars for biped skeletons
  - [x] One prefab per model, with its textures from the world data
- [x] Worlds (DAT)
  - [x] World geometry as a mesh and prefab
  - [x] Models placed with the right position, rotation and scale
  - [x] Lights
  - [x] Sounds that fade with distance
  - [x] World objects
- [ ] Transparency fixes
- [ ] Sprites as real Unity objects that cycle through their frames
- [ ] Skybox generation (currently pre-converted textures)
- [ ] Faster re-runs for models and worlds (only audio, textures and materials skip work today)
- [ ] Better grouping of world geometry and world objects
- [ ] Scripts on objects to keep their original world properties
- [ ] Sound looping from the original data (everything loops for now)
- [ ] Nice to have: gibs
- [ ] Nice to have: better mesh merging, including morph animation data

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
- [x] Climbing volumes (ladders)
- [ ] Swimming volumes (about 90% done)
  - [x] Swimming on the surface and underwater, with animations
  - [x] Jumping in and out, sinking, and treading water with your head above the surface
  - [x] Splash and underwater sounds
  - [x] Holding your breath, and drowning
  - [ ] Walking along the edge of water (movement and sounds)
  - [ ] Tune the sinking speed
  - [ ] Movement tweaks when jumping out of water
  - [ ] Air meter on the HUD and proper drowning damage numbers

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
- [x] Swimming animations
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
  - [x] Water
    - [x] Water surface with waves
    - [x] Textures, transparency and animation
    - [x] Underwater colour and fog
  - [ ] Lava
    - [x] Swimmable, with its own surface
    - [x] Fog
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
