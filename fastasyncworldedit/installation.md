# [🏠 Return to the index](#../README.adoc)

# Initial Setup

-   [Download the plugin](https://www.spigotmc.org/resources/13932/)

-   Put "FastAsyncWorldEdit.jar" into your `plugins` folder

-   Reboot the server and FAWE will generate all necessary files.

Make sure your server has been launched with [Java
17](https://adoptium.net/).

Do not install WorldEdit! FAWE is a direct replacement.

# Third Party Plugin Support

## Region Restrictions Systems

The following region restriction plugins are supported natively by us.
Other third party plugins may not be listed:

-   [FactionsUUID](https://www.spigotmc.org/resources/factionsuuid.1035/)

-   [GriefDefender](https://www.spigotmc.org/resources/68900/)

-   [GriefPrevention](https://www.spigotmc.org/resources/griefprevention.1884/)

-   [PlotSquared
    v6](https://www.spigotmc.org/resources/plotsquared-v6.77506/)

-   [Towny](https://www.spigotmc.org/resources/towny-advanced.72694/)

-   [WorldGuard](https://dev.bukkit.org/projects/worldguard)

This can be disabled in the config or bypassed with the `/wea` command
or the `fawe.bypass` permission.

## Other Plugins

We also offer an asynchronous version of VoxelSniper that follows the
restriction of FAWE:
[FastAsyncVoxelSniper](https://dev.bukkit.org/projects/favs)

# Logging and Rollback

Enable `use-disk` and `use-database` in the `config.yml` to use the in
built FAWE logging / rollback.

It is safe to give normal players access to FAWE rollback. To bypass
logging use `//fast`.
