# Introduction

This page is currently being revised.

# Masks

**To learn about basic masks that WorldEdit offers please click
[here](https://worldedit.readthedocs.io/en/latest/usage/general/masks/).**

A mask is a restriction on an edit for when blocks are placed e.g. only
replace blocks below stone. Global masks apply to all edits, brush masks
apply to just the current brush.

# Syntax

## Blocks

Use the name or id of a block (e.g. `stone`).

## Multiple masks

Use `,`(OR) or `&`(AND) to separate multiple masks. e.g.
`grass_block,$desert`

## Arguments

Mask arguments should be inside square brackets e.g. `#offset[0][5][3]`

# Setting a mask

## 

Perm: `worldedit.global-mask` Desc: This command applies a mask(s) to
all your WorldEdit actions globally. This command masks based on the
destination blocks (i.e. the blocks in the world).

## 

Perm: `worldedit.global-mask`  
Desc: The global source mask applies to all edits you do and masks based
on the source blocks (e.g. the blocks in your clipboard)

## 

Perm: `worldedit.brush.options.mask`  
Desc: Set the brush destination mask

## 

Perm: `worldedit.brush.options.mask`  
Desc: Set the brush source mask

# Mask list

## \#offset &lt;dx&gt; &lt;dy&gt; &lt;dz&gt; &lt;mask&gt;

**Desc**: Offset a mask

## % &lt;chance&gt;

**Desc**: percentage chance

## \#id

**Desc**: Restrict to initial id

## \#existing

**Desc**: If there is a non air block

## \#data

**Desc**: Restrict to initial data

## { &lt;min&gt; &lt;max&gt;

**Desc**: Restricts blocks to within a specific radius range of the
initial block

## \#surface

**Desc**: Restrict to surfaces (any solid block touching air)

## = &lt;expression&gt;

**Desc**: expression mask

## ! &lt;mask&gt;

**Desc**: Negate another mask

## $ &lt;biome&gt;

**Desc**: in a specific biome. For a list of biomes use //biomelist

## \#region

**Desc**: inside the provided selection

## ~ &lt;mask&gt; \[min=1\] \[max=8\]

**Desc**: Adjacent to a specific number of other blocks

## / &lt;min&gt; &lt;max&gt;

**Desc**: Restrict to specific terrain angle  
The -o flag will only overlayExample: /\[0d\]\[45d\]  
Explanation: Allows any block where the adjacent block is between 0 and
45 degrees.  
Example: /\[3\]\[20\]  
Explanation: Allows any block where the adjacent block is between 3 and
20 blocks below

## \#dregion

**Desc**: inside the player’s selection

## \#xaxis

**Desc**: Restrict to initial x axis

## \#liquid

**Desc**: If there is a solid block

## true

**Desc**: Always true

## false

**Desc**: Always false

## &gt; &lt;mask&gt;

**Desc**: above a specific block

## \#wall

**Desc**: Restrict to walls (any block n,e,s,w of air)

## \#zaxis

**Desc**: Restrict to initial z axis

## \#yaxis

**Desc**: Restrict to initial y axis

## &lt; &lt;mask&gt;

**Desc**: below a specific block

## \#simplex &lt;scale=10&gt; &lt;min=0&gt; &lt;max=100&gt;\`

**Desc**: Use simplex noise as the mask

## \#solid

**Desc**: If there is a solid block

## \#surfaceangle\[min\]\[max\]\[depth\] (material)

**Desc**: Replace the surface of blocks
