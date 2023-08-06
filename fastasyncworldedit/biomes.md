# Biomelist

Read more about biomes [here](https://minecraft.gamepedia.com/Biome).

Get a list of all available biomes in Bukkit.

## Usage

`//biomelist [-p <page>]`

## Permission

`worldedit.biome.list`

## Visual Example

<figure>
<img src="https://i.imgur.com/mvdiNnQ.png" alt="biomelist.png" />
</figure>

# Biomeinfo

Displays the current biome.

-   By default, you get a list of all biomes in your region selection
    (picture 1).

-   If the `-p` flag is specified, the command will instead display the
    biome of the chunk you are currently in (picture 2).

-   If the `-t` flag is specified, is the biome of the target block in
    your
    [crosshair](https://minecraft.gamepedia.com/File:HUD_example.png)
    (picture 3) will be displayed.

Biomes are independent of the Y-Axis in version \*prior\* to 1.16. From
1.16 and onwards biomes are now defined in 4x4x4 sections. More (rather
technical) information regarding the new format can be found
[here](https://wiki.vg/Protocol#Chunk_Data)

## Usage

`//biomeinfo [-p] [-t]`

## Permission

`worldedit.biome.info`

## Visual Examples

1.  ![biomeinfo.png](https://i.imgur.com/PxB1JOG.png)

2.  ![biomeinfo-p.png](https://i.imgur.com/I2hD28o.png)

3.  ![biomeinfo-t.png](https://i.imgur.com/R5G8XP9.png)

# Setbiome

Set the biome of the region selection.

-   By default, the commands changes the biome(s) in your selection
    (picture 1).

-   Use `-p` to ignore the selection and change the biome at your
    current position (picture 2).

Biomes are independent of the Y-Axis in version \*prior\* to 1.16. From
1.16 and onwards biomes are now defined in 4x4x4 sections. More (rather
technical) information regarding the new format can be found
[here](https://wiki.vg/Protocol#Chunk_Data)

## Usage

`//setbiome <biome> [-p]`

## Permission

`worldedit.biome.set`

## Visual Examples

1.  ![setbiome.png](https://i.imgur.com/ut2Im7O.png)

2.  ![setbiome-p.png](https://i.imgur.com/MxdpUFK.png)
