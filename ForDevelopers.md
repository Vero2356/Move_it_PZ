
## 📂 Mod File Structure (For Developers)

If you are contributing to this mod or want to understand how it is packaged for the Steam Workshop, here is the file hierarchy.

```text
VehicleSalvation/              <-- Root Mod Folder
│
├── mod.info                   <-- Metadata (Name, ID, Description)
├── poster.png                 <-- 256x256 preview image for Menu/Workshop
├── README.md                  <-- This file
│
└── media/
    └── lua/
        ├── client/            <-- Client-side logic (Context Menus, UI)
        │   └── VehicleSalvation_Client.lua
        │
        └── server/            <-- Server-side logic (Actual physics/vehicle updates)
            └── VehicleSalvation_Server.lua
