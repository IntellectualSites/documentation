# Single Plot Area

## Introduction

![image](https://i.imgur.com/hqkMsci.png[single-areas-min.png)

This is a new feature added in PlotSquared v5.12.0, that allows you to create plots one by one inside of ordinary (not a plot world) worlds. The process is quite simple:

## Setup

1. Create a square/cuboid selection using WorldEdit's wand (`//wand`). The lowest Y value in the selection will be the plot height, and determines where you teleport by default, where the floor is generated when using `/plot set`, etc.
2. Use `/plot area single <name>`, where `<name>` is a unique identifier. This will be used when teleporting to the area, etc.
3. The area is now created.

When creating the area, PlotSquared saves a schematic which will be used when regenerating the area when using `/plot clear`, `/plot delete` and other regenerative commands. Thus, the plot can be cleared to restore it to its original state.

The plot area settings can be modified just like normal area settings.
