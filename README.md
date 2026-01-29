# Vehicle Salvation: Manual Flip & Trailer Rescue
![Project Zomboid](https://img.shields.io/badge/Project%20Zomboid-Build%2042-red) ![Status](https://img.shields.io/badge/Status-Development-yellow)

**A Project Zomboid mod designed to address the biggest vehicle physics frustrations in Build 42.**

Tired of losing your fully repaired heavy-duty van because a pebble flipped it over? Sick of the "render distance bug" fusing your trailer inside your trunk? **Vehicle Salvation** adds immersive, stat-based mechanics to solve these issues without resorting to Debug Mode.

---

## 🛠 Features

### 1. Manual Vehicle Flip
If your vehicle ends up on its side or roof, you no longer need to ram it with another car. You can flip it back over manually, provided you have the muscle—but it comes at a cost.

* **The Action:** "Push Vehicle Upright" (Context Menu).
* **The Cost:** High Stamina/Exertion drain.
* **The Penalty:** Flipping a car violently disrupts its internals.
    * **Engine Condition:** Reduced by **50%** (Simulates oil starvation/hydrolock).
    * **Battery Condition:** Reduced by **50%** (Simulates acid leaks/shorts).
    * **Fuel:** **~15%** fuel loss (Spillage).

### 2. The "Ghost Trailer" Fix
Addresses the infamous bug where a trailer disconnects and clips inside the towing vehicle when the player leaves and re-enters render distance.

* **The Problem:** The game physics engine panics when two hitboxes overlap, often launching both vehicles into space.
* **The Solution:** Adds a **"Shove Glitched Trailer"** option.
* **How it works:** Detects a detached trailer within a <2 tile radius of your car's rear and teleports/shoves it 1.5 meters backward to safely separate the hitboxes.

---

## 📊 Stat Requirements

This isn't magic; it's physics. You need a strong character to heave a ton of steel.

| Action | Min Strength | Min Fitness | Stamina Cost |
| :--- | :--- | :--- | :--- |
| **Flip Standard Car** | **Level 5** | **Level 3** | High (Exhaustion) |
| **Flip Heavy Duty** | **Level 6** | **Level 3** | Very High |
| **Shove Trailer** | **Level 4** | **Level 2** | Moderate |

*> **Note:** Having a **Crowbar** or **Lug Wrench** in your primary hand may slightly reduce the Strength requirement (TBD).*

---

## 📥 Installation

### Steam Workshop
1. Subscribe to the mod on the Workshop.
2. Enable it in the main menu or server configuration.

### Manual Installation (GitHub)
1. Download the latest release from the [Releases](https://github.com/yourusername/repo/releases) page.
2. Unzip the folder into your Zomboid mods directory:
   * **Windows:** `C:\Users\YourName\Zomboid\mods\`
   * **Linux:** `~/Zomboid/mods/`
3. Enable the mod in-game.

---

## 🐛 Known Issues / Limitations
* **Collision:** Ensure you have clear space behind the trailer before using the "Shove" command to avoid pushing it into a wall.
* **MP Sync:** Syncing the "Shove" command in high-latency multiplayer servers works, but visuals may stutter briefly.

---

## 🔮 Roadmap
* [ ] Add "Crunching Metal" sound effects when flipping.
* [ ] Multiplayer: Allow 2 players to flip a car together (lowering individual stat requirements).
* [ ] Add tooltips explaining why the engine gets damaged.

---

## 📜 License
This mod is open source. You are free to modify it for personal use. Please credit the original author if you include this in a mod pack.

**Created for Project Zomboid Build 42.**
