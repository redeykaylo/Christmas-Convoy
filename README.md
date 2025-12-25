
<img width="145" height="66" alt="christmas3" src="https://github.com/user-attachments/assets/2c00d5c0-3189-4760-929b-59a13084c493" />
<img width="127" height="60" alt="christmas" src="https://github.com/user-attachments/assets/cc7e4a5b-1c2f-4db6-920a-b99fbd131bef" />
<img width="122" height="71" alt="christmas2" src="https://github.com/user-attachments/assets/4c1a64be-3ad3-4451-a804-f441014d2bcf" />


# Freight Trailer Tree Script for FiveM

## Description

This FiveM resource allows you to add a **tree (`prop_tree_cedar_03`) to every spawned trailer (`trflat`)**, which:

* **stays firmly attached to the trailer**, even when pulled by a truck,
* provides **realistic interaction during tree transportation**.

The resource is **client-side**, easy to use and configure.

---

## Features

* Automatically spawns a tree on all `trflat` trailer models.
* Attaches the tree to the trailer with precise position and rotation (tree lying at 90°).
* Resistant to falling under the map thanks to disabled physics while attached.

---

## Installation

1. Place the resource folder in your `resources/` directory, for example:

```
resources/[custom]/redey_christmas_convoy/
```

2. Add the following line to your `server.cfg`:

```cfg
ensure redey_christmas_convoy
```

3. Restart the server or resource.


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
