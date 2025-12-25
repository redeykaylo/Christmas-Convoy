Jasně! Tady je **kompletně přeložené README do angličtiny** s upravenou větou o pádu a fyzice:

---

# Freight Trailer Tree Script for FiveM

## Description

This FiveM resource allows you to add a **tree (`prop_tree_cedar_03`) to every spawned trailer (`trflat`)**, which:

* **stays firmly attached to the trailer**, even when pulled by a truck,
* **can fall and has physics when colliding with objects, vehicles, or NPCs**,
* provides **realistic interaction during tree transportation**.

The resource is **client-side**, easy to use and configure.

---

## Features

* Automatically spawns a tree on all `trflat` trailer models.
* Attaches the tree to the trailer with precise position and rotation (tree lying at 90°).
* Detaches the tree on collision and enables physics for realistic behavior.
* Resistant to falling under the map thanks to disabled physics while attached.

---

## Installation

1. Place the resource folder in your `resources/` directory, for example:

```
resources/[custom]/freight_trailer_tree/
```

2. Add the following line to your `server.cfg`:

```cfg
ensure freight_trailer_tree
```

3. Restart the server or resource.

---

## Resource Structure

```
freight_trailer_tree/
│
├── fxmanifest.lua
├── client.lua
└── README.md
```

---

## Configuration

In `client.lua`, you can adjust:

* Tree offset on the trailer:

```lua
AttachEntityToEntity(tree, trailer, 0, 0.0, 2.0, 1.3, 90.0, 0.0, 0.0, false, false, false, false, 2, true)
```

* Speed threshold for tree to fall on collision:

```lua
if speed > 20.0 and HasEntityCollidedWithAnything(trailer) then
```

* Force applied when the tree falls:

```lua
ApplyForceToEntity(tree, 1, 0.0, 0.0, -15.0, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
```

---

## Requirements

* FiveM server (GTA V)
* Vanilla GTA V models (`trflat`, `prop_tree_cedar_03`)
* Client-side script (`client.lua`)

---

## Tips

* To support **multiple trailer types or multiple trees**, you can easily modify the script and add additional models to the list.
* For **full server-side synchronization**, implementing entity ownership on the server is recommended.

---

## License

This script is **freely usable for FiveM projects** with no commercial restrictions.

---

If you want, I can also create a **short GIF or image** for this README to visually show how the tree attaches and falls on impact. Do you want me to do that?
