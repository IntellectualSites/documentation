# Updating from 1.12 to 1.13

## Updating to 1.13

If you are updating to 1.13 you might have to manually change some things.

PlotSquared will attempt to convert your `worlds.yml` configuration file on startup. After that has been done, you should review the file to see that everything has converted properly.

Please note that PlotSquared for 1.13 only supports Bukkit at the moment.

### Schematics

PlotSquared will not update your schematics, so you might have to do that manually.
The new version of PlotSquared introduced a format for configuring blocks for the different plot components: the [block buckets](../block-bucket.md). This
change allows you to use multiple block types in every plot component.

### Dependencies

PlotSquared now depends on [WorldEdit](https://dev.bukkit.org/projects/worldedit/files) or [FastAsyncWorldEdit](https://www.spigotmc.org/resources/fast-async-worldedit.13932), so you will need to have that installed on the server in order to use PlotSquared.
