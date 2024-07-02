# Block Buckets

## Introduction

Block buckets allow you to specify however many blocks you want, for every component of a plot. You can specify the block weight, which will determine how likely the block is to be picked from the bucket.

* `stone,grass_block,cobblestone,sandstone` will automatically infer that there should be 25% of each of the four blocks
* `stone:50,grass_block:30,sandstone:20` will use 50% of stone, 30% of grass_block and 20% of sandstone.

## Formatting

Blocks can be in the format `namespace:block[property1=value1,property2=value2]` (The properties and namespace are optional, and `grass_block` will resolve to `minecraft:grass_block[snowy=false]`. [More info](https://minecraft.wiki/w/Block_states))

Complex patterns are also accepted:

* [FAWE Patterns](/fastasyncworldedit/patterns.md) (If you have FAWE installed)
* [WorldEdit Patterns](https://worldedit.enginehub.org/en/latest/usage/general/patterns/)

## Disallowed Blocks

To restrict what blocks are allowed for the patterns, configure the `disallowed-blocks` list in `plugins/WorldEdit/config.yml`, or `plugins/FastAsyncWorldEdit/worldedit-config.yml`.
