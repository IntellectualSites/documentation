# Analysis

## Nbtinfo

Displays the NBT info for the target block in your https://minecraft.gamepedia.com/File:HUD_example.png[crosshair] in the form of a user-friendly string (plain-text).

The "Named Binary Tag" (NBT) is a format used to store data in a tree structure made up of various tags in Minecraft.

{% hint style="info" %}
More information regarding the NBT format can be found https://minecraft.gamepedia.com/NBT_format[here].
{% endhint %}

### Usage
`//nbtinfo`

### Permission
`worldedit.nbtinfo`

*Visual Example:*

[nbtinfo.png](https://i.imgur.com/dNAu8xR.png)

## Chunkinfo

With this command you get information about the chunk you are inside.

* The first line display the X and Z coordinate of your chunk.
* The two other lines display the chunk files name.

{% hint style="info" %}
More information regarding the Region file format can be found https://minecraft.gamepedia.com/Region_file_format[here].
{% endhint %}

With kbd:[F3 + G] you see the chunk border.

### Usage
`//chunkinfo`

### Permission
`worldedit.chunkinfo`

### Visual Example

[chunkinfo.png](https://i.imgur.com/tzRoWmB.png)

### Distr

This command gets the distribution of blocks in the selection (picture 1) with the percentage distribution, the count and the name of this block translated in your minecraft client language.

* You can analyze the block distribution of your clipboard (e.g. after a `//copy` command) instead of your selection with using of the `-c` flag.
* With the `-d` flag the block list will separate all blocks with different blocks values (picture 2).
* With a mouse-over above the block names you see the technical names (e.g. "minecraft:oak_log") and with using of the `-d` flag the block values in squared brackets too (picture 2).
* With the optional `-p` flag and a side number you switch between the list side.

### Usage

Primary:

`//distr`

Secondary:

`//distr [-c] [-d] [-p <page>]`

### Permission
`worldedit.analysis.distr`

### Visual Examples

( 1 )
[distr.png](https://i.imgur.com/MA3YAnj.png)

( 2 )
[distr-d.png](https://i.imgur.com/rd5Dkz4.png)

## Count

With this command you get the count of a certain type of block in your selection.

* You can search a block with an specify bock value with using of the squared brackets (e.g. `rose_bush[half=upper]`)

### Usage
`//count <block>`

### Permission
`worldedit.analysis.count`

### Visual Example

[count.png](https://i.imgur.com/v5d7qps.png)

## Size

With this command you get different measurements and other info about your selection.

* You can analyze the block measurements of your clipboard / schematic (e.g. after a `//copy` command) instead of your selection with using of the `-c` flag.

### Usage
`//size [-c]`

### Permission
`worldedit.selection.size`

### Analyzing a selection

[size_chatoutput.png](https://i.imgur.com/O0HHzyW.png)

. selection-type
. type specific selection-infos
. max. size of length, height and width
. diagonal distance in block-length
. amount of blocks (with AIR)

### Analyzing a clipboard

[size-d_chatoutput_selection.png](https://i.imgur.com/JffswW6.png)

. clipboard-list number
. cuboid size of length, height and width
. position of your copy (important for the schematic offset)
. amount of blocks (with AIR)

### Analyzing a schematic

[size-d_chatoutput_schematic.png](https://i.imgur.com/NqfkzeB.png)

. schematic name
. cuboid size of length, height and width
. schematic offset (distance between one of the corner and your save-position)
. amount of blocks (with AIR)

(Note, that a schematic always has a cuboid form.)