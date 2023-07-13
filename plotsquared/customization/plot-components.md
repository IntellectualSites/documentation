# Plot components

## Introduction

The `/plot set` command allows you to configure various components of your plot. These include:

* The plot biome
* The plot alias
* The plot home location
* (Component) Blocks in the area under the plot floor
* (Component) Blocks in the plot floor
* (Component) Blocks in the area above the plot floor
* (Component) All blocks in a plot
* (Component) Blocks inside the plot wall
* (Component) Blocks in the plot border
* (Component) Blocks in the area surrounding the plot
* (Component) The block(s) in the middle of the plot

## Component commands

### /plot set biome

This is an alias for `/plot setbiome` and has the permission node `plots.set.biome`. From v5.11.0 this has full command completion.

### /plot set alias

This is an alias for `/plot setalias` and has the permission node `plots.alias`. This changes the name of the plot as displayed in lists, and allows you to do `/plot visit <alias>`

### /plot set home

This is an alias for `/plot sethome` and has the permission node `plots.set.home`.

If no argument is given, the plot home location will be set to your current location. To remove the custom home location use `/plot sethome unset/reset/remove/none`.

### /plot set <component>

This allows you to update various parts of the plot. The components that exist are:

* `main`: Blocks in the area under the plot floor
* `floor`: Blocks in the plot floor
* `air`: Blocks in the area above the plot floor
* `all`: All blocks in a plot
* `wall`: Blocks inside of plot wall
* `border`: Blocks in the plot border
* `outline`: Blocks in the area surrounding the plot
* `middle`: The block(s) in the middle of the plot

Each component has a separate permission node, namely `plots.set.<component>`, and they share the syntax `/plot set <component> <pattern>`.

This is a powerful system as it allows you to use the power of [BlockBuckets](../block-bucket.md) to define block-patterns.

## Disallowed blocks

Version v5.11.0 introduced a new safety measure to prevent unsafe blocks from being used in plot components. This was a feature in early version 4 releases, but was removed in favour of the WorldEdit block blacklist. The settings file (settings.yml) now contains a list of blacklisted blocks ([these](../configuration/settings.yml.md) by default). To override the
blacklist, give yourself the permission node `plots.admin.unsafe`.

