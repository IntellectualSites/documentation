# Brushes

## Introduction

FAWE has brush tools that allow you to build and draw from far away. When you enable a brush, it gets bound to your currently held item. You can have different tools bound to different items and up to two brushes bound to a single item.

## Equipping a brush

* Bind to any click:
`/br <brush>`
* Equip it to right click:
`/br primary <brush>`
* Equip in to left click:
`/br secondary <brush>`

### Changing brush settings

* [`/mat <pattern>`](../patterns/patterns.md) - Patterns decide what is placed
* [`/mask <mask>`](../masks/masks.md#_masks) - A destination mask decides if a block should be changed
* [`/smask <mask>`](../masks/masks.md#_smask_masks_) - A source mask changes if a block can be placed
* [`/targetmask <mask>`](../masks/masks.md) - What blocks are targeted by the brush. The default mask is `!air`
* [`/transform <transform>`](../transforms/transforms.md) - A transform changes where the blocks are placed
* `/range <range>` - The distance you can use the brush at
* `/size <size>` - The size of the brush (e.g. radius 10 sphere)
* `/none` - Unbind tool  +
Use the `-h` flag to change the settings for your offhand brush.

### Change brush targeting

You can change the target mode to assist building in different areas (air, walls, ground etc.)
Changing the `//brush range` can also be useful.  +
`/br target <0-3>`

* 0 = Target block
* 1 = Target point directly ahead, distance depends on pitch
* 2 = Target point, distance depends on height from ground
* 3 = Target block face

### Add brush actions

Use the mouse wheel to change brush behavior

* `/br scroll clipboard <file|folder|asset url>`
* `/br scroll mask <mask1> <mask2...>`
* `/br scroll pattern <mat1> <mat2...>`
* `/br scroll range`
* `/br scroll size`
* `/br scroll target`

### Resetting a brush

Crouch (`shift`) and click to reset a brush. +
This will for example, clear the clipboard of the copypaste brush, and reset the points in the spline brush.

### Visualize the brush (Currently not implemented)

With FAWE you can visualize how the brush will change blocks:
`/br vis <0-2>`

* 0 = No visualization
* 1 = Single point
* 2 = All block changes are visualized

![Video](https://www.youtube.com/watch?v=xX-MTSLoNXw)
![image](https://i.imgur.com/J2g6Qfn.jpeg)

### Brushes:

[For a list of brushes, visit the command page.](main-commands-and-permissions.md#_brush_commands)