# [🏠 Return to the index](#../README.adoc)

# Introduction

Some FAWE commands require a region selection to work. This command
allows you to amend and or remove your current selection. The
`selection-type` argument is used to alter the region selected, whether
it be to enlarge the selection or to change its shape.

**Usage:** `//sel [selection-type]`

**Aliases:** `[ deselect, desel, /; ]`

**Permission:** `worldedit.analysis.sel`

# Selection-Types

## Cuboid

This most commonly used selection and is the **default type**. The
cuboid selection requires two points to be defined.

<figure>
<img src="https://i.imgur.com/vWZJ9Pt.png" alt="sel-cuboid.png" />
</figure>

## Extend

This is an advanced version of the cuboid selection. After the first two
points are defined, the selection can be expanded by defining even more
point. The final selection will remain a cuboid.

<figure>
<img src="https://i.imgur.com/dcKxjPZ.png" alt="sel-extend.png" />
</figure>

## Poly

With this type you get a geometrical selection with a free polygonal
border. The height of the polygon is determined by the Y-coordinate of
the highest and lowest positions. An infinite amount of points can be
defined. The border connects all corners and is sorted by an
incrementing number.

<figure>
<img src="https://i.imgur.com/iqC3Cf8.png" alt="sel-poly.png" />
</figure>

## Ellipsoid

In this selection, your region is an ellipsoid. The `position 1`
argument defines the mid-point, the `position 2` argument is used to
alter the length, width and height of the ellipsoid.

<figure>
<img src="https://i.imgur.com/ZIt64eK.png" alt="sel-ellipsoid.png" />
</figure>

## Sphere

This selection yields a spherical region. The `position 1` argument
defines the mid-point and the `position 2` argument defines the radius.

<figure>
<img src="https://i.imgur.com/gmpDkxI.png" alt="sel-sphere.png" />
</figure>

## Cyl

The selection type produces a cylindrical selection. The `position 1`
argument defines the mid-point of the cylinder and the `position 2`
argument define both the radius and the depth (height) of the cylinder.

<figure>
<img src="https://i.imgur.com/XXhLMpB.png" alt="sel-cyl.png" />
</figure>

## Polyhedron

Alias: "Convex" and "Hull"

With this selection type you get anfree polygonal selection. In
different of the `poly` selection, the height isn’t determined.

## Fuzzy

Alias: "Magic"

This selection type select all blocks from the same material of your
marked block. So if you click at an `orange_wool` block all
`orange_wool` blocks in the next near without one block distance are
selected.

-   With a left-click you choice the first block / the first material.
    With the following right-click you add it to your choice.

-   It check the neighbor blocks with an path-finder (top, bottom,
    side-blocks for each block separately) so it doesn’t need a radius
    argument.

# Selection commands

## Wand

Positions are defined in various ways. One of these ways is through the
use of a tool-item, by default this is the ubiquitous vanilla
`wooden_axe`. Left-clicking a block with the item defines the primary
position (aka "pos1") and right click defines the secondary position
(aka "pos2").

The FAWE tool-item is obtained through the `//wand` command.

**Usage:** `//wand`

**Permission:** `worldedit.wand`

## Pos

A different way to define the selection corner is through the use of the
`//pos` commands. If no parameters are specified, the position will be
set to the coordinate your standing in (picture). Alternatively, you can
define the coordinates explicitly with the `coordinates` argument. The
argument follows this syntax: `<X>,<Y>,<Z>`. You use one value for all
three coordinates.

**Usage:** `//pos1 [coordinates]` and `//pos2 [coordinates]`

**Aliases:** `//1` and `//2`

**Permission:** `worldedit.selection.pos`

**Visual Example:**

<figure>
<img src="https://i.imgur.com/03trNF5.png" alt="sel.png" />
</figure>

## Hpos

This is the third way to define the selection corner. This will select
the next solid block in your
[crosshair](https://minecraft.gamepedia.com/File:HUD_example.png).

**Usage:** `//hpos1` and `//hpos2`

**Permission:** `worldedit.selection.hpos`

**Visual Example:**

<figure>
<img src="https://i.imgur.com/hWOvW4t.png" alt="hpos.png" />
</figure>

## Chunk

This command changes your selection type to the `cuboid` selection type
and selects all the blocks in a given
[chunk](https://minecraft.gamepedia.com/Chunk). By default, the chunk
you are currently located in will be selected.

Alternatively, the target chunk can be explicitly defined by either:

-   Passing a block’s `x` and `z` coordinate

-   Passing valid [chunk
    coordinates](https://minecraft.gamepedia.com/Chunk#Finding_chunk_edges)
    alongside the `-c` flag.

The `-s` flag allows you to re-select all chunks of your current
selection.

**Usage:**

Primary:

`//chunk`

Secondary:

-   `//chunk <x,z block coordinates>`

-   `//chunk <x,z chunk coordinates> -c`

-   `//chunk -s`

**Permission:** `worldedit.selection.chunk`

## Shift

With the shift command you can shift your selection. In different of the
`//move` command you shift not any blocks (see picture).

-   To define your target direction, look to to the direction or use the
    `direction` argument. The list of valid direction arguments you find
    [here](https://wiki.intellectualsites.comhttps://github.com/IntellectualSites/FastAsyncWorldEdit-Documentation/wiki/Commands-new#direction-argument).

-   With the `amount` argument your specify the amount of block which
    are moved in the direction.

-   An negative `amount` will invert your shift direction.

**Usage:**

Primary:

`//shift <amount>`

Secondary:

`//shift <amount> <direction>`

**Visual Example:**

<figure>
<img src="https://i.imgur.com/3ZvSx8F.png" alt="shift.png" />
</figure>

## Inset

With this command your decrease your selection with the same amount by
all sides (see picture).

Alternatively, the decrease can be explicitly defined by:

-   The `amount` of block for the horizontal line alongside the `-h`
    flag

-   The `amount` of block for the vertical line alongside the `-v` flag

**Usage:**

Primary:

`//inset <amount>`

Secondary:

-   `//inset <amount> -h`

-   `//inset <amount> -v`

**Visual Example:**

<figure>
<img src="https://i.imgur.com/sw0uQdo.png" alt="inset.png" />
</figure>

## Outset

With this command your increase your selection with the same amount by
all sides (see picture).

Alternatively, the increase can be explicitly defined by:

-   The `amount` of block for the horizontal line alongside the `-h`
    flag

-   The `amount` of block for the vertical line alongside the `-v` flag

**Usage:**

Primary:

`//outset <amount>`

Secondary:

-   `//outset <amount> -h`

-   `//outset <amount> -v`

**Visual Example:**

<figure>
<img src="https://i.imgur.com/tC0LhXY.png" alt="outset.png" />
</figure>

## Contract

Comparable to the `inset` command your can decrease your selection - but
at here for a specify direction. So the decrease will only execute for
one or two sides (see picture).

-   To define your target direction, look to to the direction or use the
    `direction` argument. The list of valid direction arguments you find
    [here](https://wiki.intellectualsites.comhttps://github.com/IntellectualSites/FastAsyncWorldEdit-Documentation/wiki/Commands-new#direction-argument).

-   With the `amount` argument your specify the amount of block which
    are decreased.

-   An second `reverse-amount` will decrease the selection for the
    inverted side.

**Usage:**

Primary:

`//contract <amount>`

Secondary:

-   `//contract <amount> <direction>`

-   `//contract <amount> <reverse-amount>`

-   `//contract <amount> <reverse-amount> <direction>`

**Visual Example:**

<figure>
<img src="https://i.imgur.com/ZEB4ocp.png" alt="contract.png" />
</figure>

## Expand

Comparable to the `outset` command your can increase your selection -
but at here for a specify direction. So the increase will only execute
for one or two sides (see picture).

-   To define your target direction, look to to the direction or use the
    `direction` argument. The list of valid direction arguments you find
    [here](https://wiki.intellectualsites.comhttps://github.com/IntellectualSites/FastAsyncWorldEdit-Documentation/wiki/Commands-new#direction-argument).

-   With the `amount` argument your specify the amount of block which
    are increased.

-   An second `reverse-amount` will decrease the selection for the
    inverted side.

-   With the shortest specification of the expand command `vert`, the
    selection will increase for all blocks in the vertical line (level
    0 - 256).

**Usage:**

Primary:

`//expand <amount>`

Secondary:

-   `//expand <amount> <direction>`

-   `//expand <amount> <reverse-amount>`

-   `//expand <amount> <reverse-amount> <direction>`

-   `//expand vert`

**Visual Example:**

<figure>
<img src="https://i.imgur.com/baDkdlZ.png" alt="expand.png" />
</figure>
