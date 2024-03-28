# Installation

## Initial Setup

1. [Download the plugin](https://www.spigotmc.org/resources/13932)
2. Put "FastAsyncWorldEdit.jar" into your `plugins` folder
3. Reboot the server and FAWE will generate all necessary files.

{% hint style="info" %}
Version 6.0.0 and higher require Java 17 to run.
{% endhint %}

{% hint style="warning" %}
Do not install WorldEdit! FAWE is a **direct replacement**.
{% endhint %}

# Third Party Plugin Support

## Region Restrictions Systems

The following region restriction plugins are supported natively by us. Other third party plugins may not be listed:

* [FactionsUUID](https://www.spigotmc.org/resources/1035)
* [GriefDefender](https://www.spigotmc.org/resources/68900)
* [GriefPrevention](https://www.spigotmc.org/resources/1884)
* [PlotSquared](https://www.spigotmc.org/resources/77506)
* [Towny](https://www.spigotmc.org/resources/72694)
* [WorldGuard](https://dev.bukkit.org/projects/worldguard)

{% hint style="tip" %}
This can be disabled in the config or bypassed with the `/wea` command or the `fawe.bypass` permission.
{% endhint %}

## Other Plugins

We also offer an asynchronous version of VoxelSniper that follows the restriction of FAWE:
[FastAsyncVoxelSniper](https://dev.bukkit.org/projects/favs)

# Logging and Rollback

Enable `use-disk` and `use-database` in the `config.yml` to use the in built FAWE logging / rollback.

{% hint style="tip" %}
It is safe to give normal players access to FAWE rollback. To bypass logging use `//fast`.
{% endhint %}