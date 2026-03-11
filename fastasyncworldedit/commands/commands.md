{% hint style="info" %}
This page is currently a work in progress. You can find the original page [here](../commands).
{% endhint %}

{% hint style="info" %}
The wiki is manually updated by our volunteers with known bugs, these are highlighted by a red box on the wiki. As such, listed bugs are may have already been fixed. For more details and the up-to-date status, please refer to the GitHub Issue Tracker.
{% endhint %}

# Command Syntax

The command syntax provides an overview of the valid arguments a command takes in. The command syntax is located in the description of all commands.

Example: `//fill <pattern> <radius> [depth] [direction]`

- `<...>` = required argument
- `[...]` = optional argument (the specific default value you find in the linked detail side)

# Direction Argument

A lot of commands use a `[direction]` argument. You can choose on of the follow directions:

## cardinal points
- `north` or `n`
- `east` or `e`
- `south` or `s`
- `west` or `w`

## relative from your position / point of view
- `up` or `u`
- `down` or `d`
- `forward` or `f` = `me` or `m`
- `back` or `b`
- `left` or `l`
- `right` or `r`

(Without your input, the default direction argument `forward` is used.)

# Command Table

The `/fawe` command prefix can be used interchangeably with the following aliases:

- `/fastasyncworldedit ...`
- `/worldedit ...`
- `/we ...`

## Basic Commands

| Command                                          | Description                           |
|--------------------------------------------------|---------------------------------------|
| [Help](basic-commends/basic-commends#help)       | Display help for the FAWE commands    |
| [Confirm](basic-commends/basic-commends#confirm) | Confirm command for some FAWE actions |

## Selection

| Command                                                 | Description                                        |
|---------------------------------------------------------|----------------------------------------------------|
| [Sel](selection/selection.md#sel)                       | Remove your selection or change the selection-type |
| [Wand](selection/selection.md#wand)                     | Get the selection tool-item                        |
| [Pos1 & Pos2](selection/selection.md#pos1-and-pos2)     | Set the selection corner                           |
| [Hpos1 & Hpos2](selection/selection.md#hpos1-and-hpos2) | Set the selection corner                           |
| [Chunk](selection/selection.md#chunk)                   | Select chunks                                      |
| [Shift](selection/selection.md#shift)                   | Shift a selection to a direction                   |
| [Inset](selection/selection.md#inset)                   | Contract a selection in all directions             |
| [Outset](selection/selection.md#outset)                 | Expand a selection in all directions               |
| [Contract](selection/selection.md#contract)             | Contract a selection along all vertices            |
| [Expand](selection/selection.md#expand)                 | Expand a selection in along all vertices           |

## Administrative

| Command                                                                 | Description                                   |
|-------------------------------------------------------------------------|-----------------------------------------------|
| [Version](administrative/administrative.md#version)                     | Print out the used FAWE version               |
| [Threads](administrative/administrative.md#threads)                     | Print all thread stacks                       |
| [Reload](administrative/administrative.md#reload)                       | Reload the plugin with the last configuration |
| [Timezone](administrative/administrative.md#timezone)                   | Set your timezone for snapshots               |
| [Debugpaste](administrative/administrative.md#debugpaste)               | Generate and upload technical debug infos     |
| [WorldEditAnywhere](administrative/administrative.md#worldeditanywhere) | Bypass the region restrictions                |

## Navigation

| Command                                     | Description                            |
|---------------------------------------------|----------------------------------------|
| [Jumpto](navigation/navigation.md#jumpto)   | Teleports you to a specific position   |
| [Unstuck](navigation/navigation.md#unstuck) | Escape from being stuck inside a block |
| [Thru](navigation/navigation.md#thru)       | Pass through walls in front of you     |
| [Ascend](navigation/navigation.md#ascend)   | Go up a floor                          |
| [Descend](navigation/navigation.md#descend) | Go down a floor                        |
| [Up](navigation/navigation.md#up)           | Go upwards some distance               |
| [Ceil](navigation/navigation.md#ceil)       | Go upwards under the closest ceiling   |

## Analysis

| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| [Nbtinfo](analysis/analysis.md#nbtinfo)     | Display NBT information for a block in a user friendly format |
| [Chunkinfo](analysis/analysis.md#chunkinfo) | Gets the information about the chunk you are inside           |
| [Distr](analysis/analysis.md#distr)         | Gets the distribution of blocks in the selection / clipboard  |
| [Count](analysis/analysis.md#count)         | Get the count of a certain type of block in a selection       |
| [Size](analysis/analysis.md#size)           | Get different measurements of the selection / clipboard       |

## Geometric

| Command                                         | Description                    | more details                   |
|-------------------------------------------------|--------------------------------|--------------------------------|
| `//fill <pattern> <radius> [depth] [direction]` | Fill a hole with a half circle | [here](geometry.md#fill)       |
| `//removenear <block> [size]`                   | Remove blocks near you         | [here](geometry.md#removenear) |

## Biomes

| Command                   | Description                           | more details                |
|---------------------------|---------------------------------------|-----------------------------|
| `//biomelist [-p <page>]` | Get a list of all available biomes    | [here](biomes.md#nbtinfo)   |
| `//biomeinfo [-p] [-t]`   | Display the biome of a block / region | [here](biomes.md#biomeinfo) |
| `//setbiome <biome> [-p]` | Set the biome of the region           | [here](biomes.md#setbiome)  |

## Nature

| Command                      | Description                             | more details               |
|------------------------------|-----------------------------------------|----------------------------|
| `//drain <radius> [-w] [-p]` | Remove the water from a pool around you | [here](nature.md#drain)    |
| `//fixwater <radius>`        | Generate or fix a water see             | [here](nature.md#fixwater) |
| `//fixlava <radius>`         | Generate or fix a lava see              | [here](nature.md#fixlava)  |
| `//snow [radius]`            | Generate snow in a radius               | [here](nature.md#snow)     |
| `//thaw [radius]`            | Melt snow in a radius                   | [here](nature.md#thaw)     |