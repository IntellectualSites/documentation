# [🏠 Return to the index](#../README.adoc)

This page is currently being revised.

# Introduction

A transformation can be applied to a brush or globally to modify where
and how blocks are changed.

# Syntax

## Multiple transforms

Use a comma (`,`) to randomly use a transform from a list e.g.
`#offset[0][1][0],#pattern[stone]` (offset the block one up, OR change
it to stone)

Use an ampersand (`&`) to use multiple transforms for each block e.g.
`#offset[0][1][0]&#pattern[stone]` (offset the block one up AND change
it to stone)

## Arguments

Transform arguments should be inside square brackets e.g.
`#offset[0][1][0]`

## Setting a transform

### 

Perm: `worldedit.global-transform`  
Desc: Set the global mask

### 

Perm: `worldedit.brush.options.transform`  
Desc: Set the brush mask (separate multiple masks by spaces \` \` or
colons `:`)

# Transform List

## \#offset &lt;dx&gt; &lt;dy&gt; &lt;dz&gt; \[transform\]

**Desc**: Offset transform

## \#rotate &lt;rotateX&gt; &lt;rotateY&gt; &lt;rotateZ&gt; \[transform\]

**Desc**: All changes will be rotated around the initial position

## \#scale &lt;dx&gt; &lt;dy&gt; &lt;dz&gt; \[transform\]

**Desc**: All changes will be scaled

## \#pattern &lt;pattern&gt; \[transform\]

**Desc**: Always use a specific pattern

## \#linear3d &lt;transform&gt;

**Desc**: Use the x,y,z coordinate to pick a transform from the list

## \#linear &lt;transform&gt;

**Desc**: Sequentially pick from a list of transform

## \#spread &lt;dx&gt; &lt;dy&gt; &lt;dz&gt; \[transform\]

**Desc**: Random offset transform
