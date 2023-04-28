# [🏠 Return to the index](#../README.adoc)

# Introduction

This page is currently being revised.

Patterns are used in various commands when changing blocks. e.g.
`//set <pattern>` and `//material <pattern>`

# Syntax

## Blocks

Use the name or id of a block (e.g. `stone`).

## Inventory

You can use `hand`, or e.g. `slot5` to use blocks from your inventory.

## Multiple patterns

Use a comma (`,`) to randomly use a block from multiple patterns. For
specific ratios you can use `%` e.g. `80%stone,20%planks`

## Arguments

Pattern arguments should be inside square brackets e.g.
`#simplex[10][stone,wood]`

# Pattern list

## \#offset &lt;dx&gt; &lt;dy&gt; &lt;dz&gt; &lt;pattern&gt;

**Desc**: Offset a pattern

## \#mask &lt;mask&gt; &lt;pattern-true&gt; &lt;pattern-false&gt;

**Desc**: Apply a pattern depending on a mask

## \#spread &lt;dx&gt; &lt;dy&gt; &lt;dz&gt; &lt;pattern&gt;

**Desc**: Randomly spread blocks

## \#buffer &lt;pattern&gt;

**Desc**: Only place a block once while a pattern is in use  
Use with a brush when you don’t want to apply to the same spot twice

## \#color &lt;color&gt;

**Desc**: Use the block closest to a specific color

## \#clipboard

**Desc**: Use the blocks in your clipboard as the pattern

## \#existing

**Desc**: Use the block that is already there

## \#biome &lt;biome&gt;

**Desc**: Set the biome

## = &lt;expression&gt;

**Desc**: Expression pattern:
<http://wiki.sk89q.com/wiki/WorldEdit/Expression_syntax>

## \#relative &lt;pattern&gt;

**Desc**: Offset the pattern to where you click

## \#saturate &lt;r&gt; &lt;g&gt; &lt;b&gt;

**Desc**: Saturate the existing block with a color

## \#darken

**Desc**: Darken the existing block

## \#anglecolor &lt;distance&gt;

**Desc**: A darker block based on the existing terrain angle

## \#desaturate &lt;percent&gt;

**Desc**: Desaturated color of the existing block

## \#averagecolor &lt;r&gt; &lt;g&gt; &lt;b&gt;

**Desc**: Average between the existing block and a color

## \#fullcopy \[schem|folder|url=#copy\] \[rotate=false\] \[flip=false\]

**Desc**: Places your full clipboard at each block

## \#buffer2d &lt;pattern&gt;

**Desc**: Only place a block once in a column while a pattern is in use

## \#angledata

**Desc**: Block data based on the existing terrain angle

## \#lighten \[randomize=true\] \[max-complexity=100\]

**Desc**: Lighten the existing block

## \#!x &lt;pattern&gt;

**Desc**: The pattern will not be provided the z axis info.  
Example: !x\[!z\[#~\[#l3d\[pattern\]\]\]\]

## \#surfacespread &lt;distance&gt; &lt;pattern&gt;

**Desc**: Applies to only blocks on a surface. Selects a block from
provided pattern with a given ranomized offset \[0, ). e.g. Use
`#existing` to randomly offset blocks in the world, or `#copy` to offset
blocks in your clipboard

## \#solidspread &lt;dx&gt; &lt;dy&gt; &lt;dz&gt; &lt;pattern&gt;

**Desc**: Randomly spread solid blocks

## \#linear2d &lt;pattern&gt; \[xscale=1\] \[zscale=1\]

**Desc**: Use the x,z coordinate to pick a block from the list

## \#!y &lt;pattern&gt;

**Desc**: The pattern will not be provided the y axis info

## \#linear3d &lt;pattern&gt; \[xscale=1\] \[yscale=1\] \[zscale=1\]

**Desc**: Use the x,y,z coordinate to pick a block from the list

## \#linear &lt;pattern&gt;

**Desc**: Sequentially set blocks from a list of patterns

## \#!z &lt;pattern&gt;

**Desc**: The pattern will not be provided the z axis info

## \#simplex &lt;scale=10&gt; &lt;pattern&gt;

**Desc**: Use simplex noise to randomize blocks

## \#perlin &lt;scale=10&gt; &lt;pattern&gt;

**Desc**: Use perlin noise to randomize blocks

## \#rmf &lt;scale=10&gt; &lt;pattern&gt;

**Desc**: Use ridged multi-fractal noise to randomize blocks

## \#voronoi &lt;scale=10&gt; &lt;pattern&gt;

**Desc**: Use voronoi noise to randomize blocks
