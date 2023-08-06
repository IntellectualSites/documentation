# Nbtinfo

Displays the NBT info for the target block in your
[crosshair](https://minecraft.gamepedia.com/File:HUD_example.png) in the
form of a user-friendly string (plain-text).

The "Named Binary Tag" (NBT) is a format used to store data in a tree
structure made up of various tags in Minecraft.

More information regarding the NBT format can be found
[here](https://minecraft.gamepedia.com/NBT_format).

## Usage

`//nbtinfo`

## Permission

`worldedit.nbtinfo`

**Visual Example:**

<figure>
<img src="https://i.imgur.com/dNAu8xR.png" alt="nbtinfo.png" />
</figure>

# Chunkinfo

With this command you get information about the chunk you are inside.

-   The first line display the X and Z coordinate of your chunk.

-   The two other lines display the chunk files name.

More information regarding the Region file format can be found
[here](https://minecraft.gamepedia.com/Region_file_format).

With kbd:\[F3 + G\] you see the chunk border.

## Usage

`//chunkinfo`

## Permission

`worldedit.chunkinfo`

## Visual Example

<figure>
<img src="https://i.imgur.com/tzRoWmB.png" alt="chunkinfo.png" />
</figure>

## Distr

This command gets the distribution of blocks in the selection
(picture 1) with the percentage distribution, the count and the name of
this block translated in your minecraft client language.

-   You can analyze the block distribution of your clipboard (e.g. after
    a `//copy` command) instead of your selection with using of the `-c`
    flag.

-   With the `-d` flag the block list will separate all blocks with
    different blocks values (picture 2).

-   With a mouse-over above the block names you see the technical names
    (e.g. "minecraft:oak\_log") and with using of the `-d` flag the
    block values in squared brackets too (picture 2).

-   With the optional `-p` flag and a side number you switch between the
    list side.

## Usage

Primary:

`//distr`

Secondary:

`//distr [-c] [-d] [-p <page>]`

## Permission

`worldedit.analysis.distr`

## Visual Examples

( 1 ) ![distr.png](https://i.imgur.com/MA3YAnj.png)

( 2 ) ![distr-d.png](https://i.imgur.com/rd5Dkz4.png)

# Count

With this command you get the count of a certain type of block in your
selection.

-   You can search a block with an specify bock value with using of the
    squared brackets (e.g. `rose_bush[half=upper]`)

## Usage

`//count <block>`

## Permission

`worldedit.analysis.count`

## Visual Example

<figure>
<img src="https://i.imgur.com/v5d7qps.png" alt="count.png" />
</figure>

# Size

With this command you get different measurements and other info about
your selection.

-   You can analyze the block measurements of your clipboard / schematic
    (e.g. after a `//copy` command) instead of your selection with using
    of the `-c` flag.

## Usage

`//size [-c]`

## Permission

`worldedit.selection.size`

## Analyzing a selection

<figure>
<img src="https://i.imgur.com/O0HHzyW.png" alt="size_chatoutput.png" />
</figure>

1.  selection-type

2.  type specific selection-infos

3.  max. size of length, height and width

4.  diagonal distance in block-length

5.  amount of blocks (with AIR)

## Analyzing a clipboard

<figure>
<img src="https://i.imgur.com/JffswW6.png"
alt="size-d_chatoutput_selection.png" />
</figure>

1.  clipboard-list number

2.  cuboid size of length, height and width

3.  position of your copy (important for the schematic offset)

4.  amount of blocks (with AIR)

## Analyzing a schematic

<figure>
<img src="https://i.imgur.com/NqfkzeB.png"
alt="size-d_chatoutput_schematic.png" />
</figure>

1.  schematic name

2.  cuboid size of length, height and width

3.  schematic offset (distance between one of the corner and your
    save-position)

4.  amount of blocks (with AIR)

(Note, that a schematic always has a cuboid form.)
