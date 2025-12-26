# Changelog (old)

## Introduction

New changelogs can be obtained on the Releases tab on GitHub.

Direct links to versions:

## v4 to v5:

* [Click here](spigot-changelog-v4-and-v5.md)

## V5:

* [v5.0.0 to 5.9.0](#v500-to-590)
* [v5.10.0](#v5100)
* [v5.10.1](#v5101)
* [v5.10.2](#v5102)
* [v5.10.3]Internal changes, no public version released.
* [v5.10.4](#v5104)
* [v5.10.5](#v5105)
* [v5.11.0](#v5110)
* [v5.11.1](#v5111)
* [v5.12.0](#v5120)
* [v5.12.1](#v5121)
* [v5.12.2](#v5122)
* [v5.12.3](#v5123)
* [v5.12.4](#v5124)
* [v5.13.0](#v5130)
* [v5.13.1](#v5131)
* [v5.13.2](#v5132)
* [v5.13.3](#v5133)
* [v5.13.4](#v5134)
* [v5.13.5](#v5135)
* [v5.13.6](#v5136)
* [v5.13.7]Internal changes, no public version released.
* [v5.13.8](#v5138)
* [v5.13.9](#v5139)
* [v5.13.10](#v51310)
* [v5.13.11](#v51311)

## V6:

* [v6.0.0](#v600)
* [v6.0.1](#v601)
* [v6.0.2](#v602)
* [v6.0.3](#v603)
* [v6.0.4](#v604)
* [v6.0.5](#v605)
* [v6.0.6](#v606)
* [v6.0.7](#v607)

## v5.0.0 to 5.9.0

Flags:

* Completely rewritten flag system
* Improved flag database handling
* Add support for material tags/categories in flags
* Improve /plot flag info and /plot flag list
* Add flag command completion
* Rewritten wiki flag pages
* Make golems be included in animal-attack
* Fix block-ignition in merged plots
* Fix liquid-flow
* Fix untrusted-visit
* Fix fly not restoring player flight correctly
* Add a coral-dry flag
* Add a chat flag handling plot chat

Performance:

* Prevent synchronous chunk loads throughout the plugin. This greatly reduces the impact /plot auto has on performance

Generator:

* Make sure clearing augmented plots with full vanilla terrain does not generate walls
* Use WorldEdit to regenerate chunks in augmented plots (Warning: This is very slow!)
* Support schematics v2 (biomes, entities, etc!)
Other:
* Fix retrieval of offline player profiles in 1.15
* Add option to have road regeneration persistent across restarts
* Add option to have /plot purge also clear the purged plots
* Make PlotSquared events platform agnostic
* Make the PlotSquared events tidier
* Fix issue where /plot swap didn't correctly update owners
* Fix issue where /plot move didn't clear the plots
* Fix issue where /plot swap didn't correctly update the plot signs
* Improve the swapping/moving API
* Fix /plot comment (from V4)
* Fix pattern generation (from V4)
* Fix the legacy converter (from V4)
* Allow restone to be used in server plots  with redstone.disable-offline enabled
* Fix biome setting (it now works in 1.13-1.15+)
* Fix issue where liquids could flow from borders/walls into plots
* Improve plot owner API
* Improve the code base internally by removing a bunch of magic values, and increasing code encapsulation
* Allow trusted users to use /plot set
* Add PAPI placeholders to PlotSquared (moved from the expansion)
* Fix issue where Bukkit world API was interacted with asynchronously, which caused PlotSquared augmented generation to fail when using recent Paper builds
* Better organisation of the code base
* Completely restructured package names
* Added option to force plot chat
* Lots of other minor changes..

## v5.10.0

* Fixed issues with update notifications
* Fixed issue with extremely slow plot clearing

## v5.10.1

* Fixed updater issue caused by the Spigot API returning 5.1 not 5.10 for the version.
* Updated default config value for plot biome to match the format WorldEdit accepts, and fix incorrectly formatted existing config values.

## v5.10.2

* Update notifications are now polled every 30 minutes, and only congratulates for running the latest version once. No longer polls every time a player with permissions joins when update checking is enabled either.
* Fix getting plot comments.
* Fix null errors with PlaceholderAPI. Also sure up some of the logic so that even if the player is not in a plot, relevant placeholders can still be used.

## v5.10.4

* Added Paper-specific listeners (configurable) to:
  - Prevent mobs from leaving the plot by wandering out
  - Improve mob spawn prevention performance
* Reduce default update poll rate even more (default 6 hrs, with config option)
* LiquidFlow flag enabled will override block physics denied
* Flag names must be 64 characters or less (should allow for older Database schemas to not error)
* Plotworlds with plot + road size less than 16 will no longer cause generation issues.

*This version also contains the following changes:*

* Add config option to disable polling after an update is found (will also no longer print updates to console). Players in-game will still receive the prompt.
* Correctly detect when a newer version is available to counter Spigot's API lag
* LiquidFlow flag is now an enum with three values: default, enabled and disabled
* Bring SpawnReasons up-to-date with what's in Spigot
* Plot expiry messages are now clickable to run commands
* Plot setup will correctly display the world type options

## v5.10.5

* Fix errors during plot analysis
* Correctly display grants used and grants remaining
* Fix grants when using /plot auto
* Fix block tags (#buttons) when used in flags after restarting server
* Fix /plot merge all
* Don't send chat spy to message sender

## v5.11.0

This is a larger update. It is highly recommend that you read through the linked material. Please note that the backup system is enabled by default, and will delay `/plot clear` and `/plot set <component>` until a snapshot has been taken of the plot. This can be disabled in the settings file.

If you have extremely big plots (>200 blocks in width) you should probably disable automatic backups.

*If you're going to use the backup system together with FAWE, please update to the latest FAWE build!*

*New Features*:

* Added plot backups https://wiki.intellectualsites.com/en/plotsquared/backups
* Added a `keep-inventory` flag
* Added a way to disable certain blocks from being used in `/plot set` (in settings.yml) (https://i.imgur.com/pO0grZd.png). By default this includes: https://pastie.io/qhceln.txt
* Added a new wiki page for `/plot set`: https://wiki.intellectualsites.com/en/plotsquared/plot-settings
* Added command completions for `/plot set`: https://i.imgur.com/kNz3zks.png
* Added updated French translations

*Fixes*:

* Fixed slime navigation bug
* Fixed potential issue with our entity combat listener
* Fixed `/plot merge auto`

## v5.11.1

This update focuses a lot on the chunk processor and I have therefore updated its wiki page: https://wiki.intellectualsites.com/en/plotsquared/optimization/chunk-processor. This system is quite handy if your server suffers from large tile entity counts, and now it now works properly again.

*Additions*:

* Added the flag `prevent-creative-copy` to prevent people from copying NBT data in the plot
* Added the option to enable the tile entity check on block placement when using Paper
* Added a new bStats chart for tracking FAWE usage

*Changes*:

* (Currently WE only - Not FAWE compatible) Updated the WE listener to correctly limit tile entities, and make the limit apply per chunk rather than per edit
* Made `/plot set <component>` respect the tile entity limit
* Updated the chunk manager code
* Allow `/plot auto` from non-plot areas if the server only has one plot area
* Copy NBT data on plot move, swap, etc

*Fixes*:

* Fixed the update notifier for the 950th time
* Fixed an issue where `/plot set ##*category` would bypass the blacklist
* Fixed an issue where the tile entity and entity limit would delete all entities in the chunk
* Fixed an issue where style.yml wouldn't update the default values
* Made `/plot setbiome` properly load chunks before updating the biome
* Made `/plot clear` empty tile entities before removing them

*If you are using FastAsyncWorldEdit, please update to the latest FAWE build, as PlotSquared's chunk manager has changed*

## v5.12.0

_Due to changes to plot components in this version, it is highly recommended using the latest version of FastAsyncWorldEdit (If you want to use FAWE)._

## Major Changes

### Single Plot Area

This version makes it a lot easier to create [Single Plots](../customization/single-plot-area.md). in a non-plot world, making use of the WorldEdit selection want. You can now create plots anywhere you like and leverage the power of PlotSquared in all your worlds.

### Plot Component GUI

PlotSquared now allows you to create [Component Presets](../customization/plot-components.md) that can be used through a GUI.

### UUID System Remake

We have rewritten our UUID handling from scratch, and UUID to username mapping should be a lot more reliable going roward. This should be able to resolve all issues with "Unknown" plot members, owners, etc.

When you run the usernames automatically from different sources (in the given order):

* In memory cache
* New user_data.db (SQLite cache)
* Legacy userdata.db (SQLite cache)
* Bukkit offline players / Paper profiles
* (Optional) Essentials user files
* (Optional) LuckPerms user data
* (Optional) BungeePerms user data
* Mojang API

The first time you run PlotSquared v5.12.0 it might have to run for an extended amount of time, depending on the amount of missing UUIDs on your server. The reason it's particularly slow in this case is because Mojang enforces a very restrictive rate limit on the amount of requests we can make. When this entire process has been completed once, PlotSquared will be able to index thousands of UUIDs in a matter of seconds.

_If you run an offline-mode server without BungeeCord, your old UUID cache may no longer be functional, which means that everyone will be listed as "Unknown" until they join the server for the first time. If this happens, please contact us on Discord so we can evaluate your particular setup and hopefully remedy the issue._

This also means that you can add people to plots, make them owners etc, even if they have never been on the server before.

## Other Changes

### Features

* Added a new internal world management system.
* Added tab completion for `/plot visit`.
* Added tab completion for `/plot list`.
* Added tab completion for `/plot <add|trust|deny|kick|remove>`.
* Added support for asynchronous tab completion (Paper only).
* Added `/plot toggle debug` which will inform plot owners and administrators when flags are changing the outcome of events

### Changes

* Switched issue tracker. We now use [YouTrack](https://issues.intellectualsites.com/projects/ps).
* PlotSquared will now register itself in `bukkit.yml`, which should resolve issue where worlds were not recognized as plot worlds.
* Make large operations less prone to crash the server.
* Moved the cuboid operation method, this now means that FAWE can take control of operations like `/plot set`.
* Switch out the internal plot area mappings and use an [R-tree](https://en.wikipedia.org/wiki/R-tree). This will perform better when a world has a large amount of plot areas.
* Greatly improve the plot area API.
* Add a plot query API and use it internally.
* Overhauled the internals of the `/plot setup` command. It also got some tab completion e.g. for blocks.
* Made the list of command aliases that the paper command completer will act on.

### Fixes

* Fixed issues with schematic saving ([#2836](https://github.com/IntellectualSites/PlotSquared/commit/d5d18a60fb68e95115a1f8678043e6f01a76d328)).
* Fixed an issue where plot chat was not send to actor when plot chat spy activated ([#PS-7](https://issues.intellectualsites.com/issue/PS-7)).
* As a consequence of the new UUID system, "unknown" should not be an issue anymore.
* Fixed issues where visit would bring you to the wrong player's plot.
* Fixed an issue where merging plots would generate the plot blocks on road height instead of plot height ([#PS-46](https://issues.intellectualsites.com/issue/PS-46))
* Correct the the keep-commands sent during expiration.

## v5.12.1

This version is a minor hotfix in regards to v5.12.0

*Changes:*

* This version fixes an issue where old player objects were not cleaned up properly. This is caused by an issue with the event order in Spigot (and Spigot derivatives).
* Issues relating commands not working have been resolved as well.

## v5.12.2

This update focuses a lot on 1.16 with all its new features and enhancements.

https://www.spigotmc.org/resources/plotsquared-v5.77506/update?update=346686

**Warn:** If `/plots home` does not function, please delete your `plugins/PlotSquared/config/commands.yml` file.

*Additions*:

* Added the placeholder `%plotsquared_currentplot_localflag_<flag>%` and `%plotsquared_currentplot_flag_<flag>%` to return flag values of  plot flags.
* Added 1.16.1 support
* Added a config option to make cache expiration configurable.
* Added config option to disable background caching of uuids.
* Added a method to hook into plot clearing and modify the behavior, which allows plugins like FAWE to boost clearing speed.
* Added the ability to set flags for the plot road. You can do so in the worlds.yml.

*Changes*:

* Lowered tab completion cache time to 15 seconds rather than 1 minute.
* Only initialise EconHandler when economy is enabled and stop accessing the static instance directly.
* Separate the Vault Permission Handling from the Economy Handling.
* Added `plots.admin.alias.remove` and `plots.admin.alias.set` permission nodes.
* `/plot visit` and `/plot home` where split up in two different commands. (You can now teleport to your 12384th plot without any issues)
* `/plot visit` and `/plot home` now have separate permission nodes: `plots.visit` and `plots.home`.

**TIP:** Check the new syntax: [/p home](https://wiki.intellectualsites.com/en/plotsquared/commands-and-permissions#home) and [/p visit](https://wiki.intellectualsites.com/en/plotsquared/commands-and-permissions#visit). The new placeholders are described at [here](https://wiki.intellectualsites.com/en/plotsquared/placeholders).

*Fixes*:

* Fixed an issue with the OfflinePlayerUUIDService breaking when no worlds have been loaded
* Fixed an issue where numbers were sometimes parsed as usernames when they shouldn't be.
* Fixed "Not a valid plot ID" being sent twice
* Fixed "invalid player" message on /plot kick
* Fixed world border update on Plot#claim [[PS-13](https://issues.intellectualsites.com/issue/PS-13)]
* Fixed an issue with plot backups
* Fixed incorrect biome data for road intersections [[PS-50](https://issues.intellectualsites.com/issue/PS-50)]
* Fixed incorrect /plot alias tab completion

If you are experiencing constant rain on 1.16.1 in your plot worlds, update your SpigotMC build (or derivatives). This refers to an issue on Spigot's end [[SPIGOT-5849](https://hub.spigotmc.org/jira/browse/SPIGOT-5849)] which has been fixed by now.

## v5.12.3

*Changes:*

* Remove `commands.yml`. This will be reimplemented in version 6

*Fixes:*

* Fixed issue where players couldn't interact with their own plots
* Fixed issue where players couldn't teleport to merged plots
* Fixed issue where the plot expiration task wouldn't start

## v5.12.4

*Fixes*:

* Fixes a bunch of issues related to dispensers and plot roads ([#2874](https://github.com/IntellectualSites/PlotSquared/pull/2874))
* Fix the `%plotsquared_currentplot_owner%` placeholder throwing exceptions (PS-62)
* Fix kill-road-mobs (PS-73)
* Fixes issues related to pistons and plot roads ([#2875](https://github.com/IntellectualSites/PlotSquared/pull/2875) / PS-39)

*Changes*:

* Send teleportation cancellation message immediately on movement (PS-33)
* Split failed UUID batches into individual requests rather than just throwing an IllegalArgumentException
* Made PlotPlayer#getLocation return a copy of the location

## v5.13.0

*Fixes*:

* Fixed paste on top of road schematics
* Fixed `/plot target nearest` [[PS-74](https://issues.intellectualsites.com/issue/PS-74)]

*Changes*:

* Cleaned up bukkit listeners by splitting them up into own classes.
* Removed a few old debugs.
* Fixed a few typos on the javadocs.

*Additions*:

* Added config option `PASTE_ROAD_ON_TOP` to declare whether road schematics should be pasted differently from plot schematics.
* Added config options to enable or disable each UUID service
* Added chunk coordinator, a utility that allows for the loading and coordination of chunk actions.
The coordinator takes in collection of chunk coordinates, loads them and allows the caller to specify a sink for the loaded chunks. The coordinator will prevent the chunks from being unloaded until the sink has fully consumed the chunk.
* Added support for other placeholder API's like MVdWPlaceholderAPI. Version 3.1.1 is recommended.

## v5.13.1

*Fixes*:

* Fixed the redstone flag on roads
* Fixed `misc_spawn_unowned` in the worlds.yml [[PS-81](https://issues.intellectualsites.com/issue/PS-81)]
* Fixed `use` flag when applied to the road [[PS-95](https://issues.intellectualsites.com/issue/PS-95)]
* Fixed dupe on death when using the `keep-inventory` flag.
* Fixed pve against animals on other plots and roads

*Changes*:

* Separated `misc-spawning` from `mob-spawning` in the worlds.yml
* Removed a few old debugs.
* Fixed a few typos on the javadocs.

*Additions*:

* Added weeping and twisted vines to the `vine-grow` flag [[#133](https://github.com/IntellectualSites/PlotSquaredSuggestions/issues/133)]
* Added german translation strings for flag descriptions
* Added Skyblock template

## v5.13.2

*Fixes*:

* Fixed an issue where PlotSquared would try to convert databases created in v5 from v4 to v5, which obviously fails, because they never used v4.
* Fixed an OfflinePlayerUtil breakaged caused by NMS Changes
* Fixed an issue where visiting merged plots with multiple owners didn't work properly.
* Fixed `/plot trust` and `/plot add` not displaying a message when trying to add or trust the plot owner.
* Fixed block ignition not being denied by default [[PS-114](https://issues.intellectualsites.com/issue/PS-114)]
* Fixed signs not being generated by default

*Additions*:

* Added 1.16.2 support.
If you want to use 1.16.2, use a WorldEdit build from here: https://builds.enginehub.org/job/worldedit?branch=master
If you are using FAWE, update your FAWE build from here: https://ci.athion.net/job/FastAsyncWorldEdit-1.16/
* Allow teleporting to merged plots with multiple owners using `/plot home`

## v5.13.3

*Fixes*:

* Fixed validations of plot aliases with offline players [[PS-126](https://issues.intellectualsites.com/issue/PS-126)]
* Fixed TileState checks on 1.13.2 [[PS-122](https://issues.intellectualsites.com/issue/PS-122)]
* Fixed default namespace not being added when wrapping block categories by their ids [[PS-131](https://issues.intellectualsites.com/issue/PS-131)]

*Additions*:

* Added an option to opt-out of MvDWPlaceholderAPI to skip the placeholder injection. This setting is enabled by default, however, you can simply disable it if you don't use PlotSquared placeholder with FeatherBoard or don't want to use FeatherBoard's build in placeholders and simply use it with PlaceholderAPI, that works as well.
* Added a debug (`/plot toggle debug`) onto `onBlockIgnite` event notifying players to set the `block-ignition` flag when using flint and steel before cancelling the event.
* Added a debug (`/plot toggle debug`) onto `onEntityBlockForm` event notifying players if the `ice-form` flag is not set before cancelling the event.
* Don't send `notify-enter/leave` messages if vanished players visit a plot. [[PS-103](https://issues.intellectualsites.com/issue/PS-103)]

## v5.13.4

*Additions*:

* Added support for 1.16.3
You will need to update Fawe or WorldEdit when updating.
You can get the latest Fawe build here: https://modrinth.com/plugin/fastasyncworldedit
You can get the latest WorldEdit build here: https://builds.enginehub.org/job/worldedit?branch=master
* Added pigstep music disc to `/plot music`

## v5.13.5

*Fixes*:

* Fixed `/plot grant`

*Additions*:

* Allow /plot home `[area|world]`

## v5.13.6

*Fixes*:

* Fix inconsistency between using Paper listeners and normal Spigot listeners regarding misc entity spawning
* Prevent blocks from becoming waterlogged sometimes when at the edge of the plot (prevent road water grief)
* Allow worlds to be named with uppercase lettering

## v5.13.8

*Additions*:

* 1.16.4 support has been added
 You will need to update [FAWE](https://modrinth.com/plugin/fastasyncworldedit/) or [WorldEdit](https://dev.bukkit.org/projects/worldedit/files/3100517) as well, depending on what you use.

## v5.13.9

*Fixes*:

* /plot setowner none now works to remove the plot's owner
* Boats can no longer be placed on other plots by interacting with interactable blocks, fixes [PS-175](https://issues.intellectualsites.com/issue/PS-175)
* Fixed single plot worlds
* Schematics now save uncorrupted tile entities
* Fixed `/plot deny *` not teleporting everyone from the plot [PS-182](https://issues.intellectualsites.com/issue/PS-182)
* Fixed `/plot f set disable-physics` true creating floating ghost blocks [PS-159](https://issues.intellectualsites.com/issue/PS-182)
* Fixed issues with schematic x/z offset being doubled up
* Fix error when attempting to purge by owner/added

## v5.13.10

*Fixes*:

* `/plot debugpaste` failing to grab Multiverse's worlds.yml properly

## v5.13.11

*Additions*:

* Added a couple of new metrics to bStats.

*Fixes*:

* Fixed [[PS-188](https://issues.intellectualsites.com/issue/PS-188)]
* Fixed `java.lang.NoSuchFieldException: mustSave` on startup when server version >= 1.13.2
* Fixed `teleport.per-world-visit` from settings.yml

## v6.0.0

## Settings.yml Changes:

The following entries have been removed or altered and can be deleted safely from the file.

### Removed:

* The option `web.assets` has been removed due the asset interface no longer existing within v4 and v5.
* The option `chat.console_color` has been removed. PlotSquared now respects legacy and adventure components properly and will always send the correct colors.
* The options `uuid.use-sqluuidhandler`, `enabled_components.per-world-visit`, `chunk.block-cache`, `enabled_components.permission-cache`, `chat.interactive` have been removed due to serving no purpose anymore.
* The category `chat` has been removed.
* The standalone option `titles` has been moved into its own configuration block alongside its new options.

### Additions:

The following entries have been added. This process is done automatically on the first start up of v6.

* The option `enabled-components.default-locale` was added. The specified value will be used to find the correct translation file.
* The option `enabled-components.per-user-locale` was added. When enabling it, PlotSquared will send texts in the user's locale if translations exist.
* The options `teleport.on-clear` and `teleport.on-delete` determining whether the user should be teleported upon clearing or deletion.
* The options `timeformat.date-format` and `timeformat.time-zone` have been added formatting the plot creation date placeholder and the appearance in `/plot info`. Editing the format does not affect the storage date.
* Added the options `titles.titles-fade-in`, `titles.titles-stay`, `titles.titles-fade-out` and `titles.titles-as-actionbar` making plot titles duration customizable and allowing you to opt in plot titles send as actionbar message.
* The former option `titles` has been transformed into `titles.display-titles`.
* The option `ratings.block-0` to 8 has been added determining the blocks to use for the `/plot rate` GUI.
* The option `chat.log-plotchat-to-console` has been added declaring whether the plot chat should be logged to console or not.
* The option `chat.notification-as-actionbar` has been added determining whether notification flags, such as notify-enter, notify-leave, greeting or farewell should send an actionbar message over a regular chat message.

## Worlds.yml Changes:

* The option `plot.sign_material` (respectively `plot.legacy_sign_material` for versions equal to 1.13) has been added allowing you to change the material of plot signs.
* Within the removal of the Nashorm scripting engine and the switch to [WorldEdit Expressions](https://worldedit.enginehub.org/en/latest/usage/other/expressions/). Expression in prices are no longer formed with `+{arg}+` but `+{plots}+` making it more intuitive to use. The conversion is done automatically by PlotSquared if such a field is detected. If you used JS functions like `Math.pow()` before, you'll need to update that manually. For help with that, look at the WorldEdit wiki or ask on our discord.

## Translation Changes:

* PlotSquared uses Adventure as of v6 to handle translations and support hex color codes, gradients, etc. Get an [explanation](https://docs.adventure.kyori.net/minimessage.html#color) how to apply it.
* We are now available on Crowdin Enterprise to manage our translations. Help us [translate PlotSquared](https://intellectualsites.crowdin.com/plotsquared) into your language.
* You can change the language of PlotSquared in the settings.yml, with the key `<key>`. You don't need to rename any files anylonger.
* Translations are located in the `lang` folder. You can safely delete the old `translations` folder, it's no longer needed.

## Permission Changes:

____
Within PlotSquared v6, permissions are no longer granted by default if the person is an operator (/op [player]). PlotSquared comes with a complex permission system that *should* be used with a permission management software, such as [LuckPerms](https://www.spigotmc.org/resources/luckperms.28140/).
However, you can grant people all PlotSquared permissions with the node `plots.*`.
____

### Single permission changes

#### Additions:

* The permission `plots.admin.music.other` has been added. It allows you to use `/plot music` on foreign plots.
* The permission `plots.visit.denied` has been added. Without the permission, players cannot visit plots they are denied on.
* The permissions `plots.add.<amount>`, `plots.trust.<amount>` and `plots.deny.<amount>` have been added. They are working in the same way like the range-typic permissions of `plots.plot.<amount>` do; you specify the amount within the permission node.
* The permission `plots.admin.flight` has been added to bypass the `fly` flag.
* The permission `plots.flag.notify-leave.bypass` has been added. `plots.flag.notify-enter.bypass` does no longer cover both types.
* The permission `plots.admin.components.other` has been added as administrative override to use `/plot components` on plots you don't own but need to administer.
+
#### Changes:
* `/plot flag remove <flag>` now requires the permission node `plots.flag.remove`. Previously it was inherited by `plots.flag.add`.
* The permission `plots.admin.command.unlink` has been fixed.
* The permission `plots.set.alias` has been replaced with `plots.alias.set`
* The permission `plots.admin.command.rate` has been replaced with `plots.admin.command.purge.ratings`.
* The permission `plots.admin.command.chat` has been replaced with `plots.admin.command.chatspy`
* The command `/plot toggle <attribute>` now requires the base permission `plots.toggle` too.
+
#### Removal:
* The permission `plots.list.unknown` has been removed.
* The permission `plots.admin.command.update` has been removed.

### Permission pack changes

All `plotme.<pack>` packs have been removed. Below we will list the new pack that replaces the removed permission pack or the permission node to assign.
Note: If you didn't use the old PlotMe permissions before, you can ignore the following table!

| Removed Permission         | Replacement                                                                                                                                                                                             |
|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| plotme.use                 | `plots.permpack.basic`, `plots.plot.1`                                                                                                                                                                  |
| plotme.admin               | `plots.admin`                                                                                                                                                                                           |
| plotme.admin.clear         | `plots.admin.command.clear`                                                                                                                                                                             |
| plotme.admin.reset         | `plots.admin.command.delete`                                                                                                                                                                            |
| plotme.admin.add           | `plots.admin.command.add`                                                                                                                                                                               |
| plotme.admin.deny          | `plots.admin.command.deny`                                                                                                                                                                              |
| plotme.admin.remove        | `plots.admin.command.remove`                                                                                                                                                                            |
| plotme.admin.undeny        | `plots.admin.command.remove`                                                                                                                                                                            |
| plotme.admin.bypassdeny    | `plots.admin.entry.denied`                                                                                                                                                                              |
| plotme.admin.setowner      | `plots.admin.command.setowner`                                                                                                                                                                          |
| plotme.admin.move          | `plots.admin.command.move`                                                                                                                                                                              |
| plotme.admin.weanywhere    | `plots.admin.weanywhere`                                                                                                                                                                                |
| plotme.admin.list          | `plots.list.world`, `plots.list.world.*`, `plots.list.top`, `plots.list.all`, `plots.list.unowned`, `plots.list.player`, `plots.list.done`, `plots.list.expired`, `plots.list.fuzzy`, `plots.list.area` |
| plotme.admin.dispose       | `plots.admin.command.delete`                                                                                                                                                                            |
| plotme.admin.done          | `plots.admin.command.done`                                                                                                                                                                              |
| plotme.admin.expired       | `plots.list.expired`                                                                                                                                                                                    |
| plotme.admin.buildanywhere | `plots.admin.vehicle.*`, `plots.admin.interact.*`, `plots.admin.build.*`, `plots.admin.destroy.*`                                                                                                       |
| plotme.use.middle          | `plots.middle`                                                                                                                                                                                          |
| plotme.use.buy             | `plots.buy`                                                                                                                                                                                             |
| plotme.use.sell            | `plots.set`, `plots.flag`, `plots.set.flag`, `plots.set.flag.price.*`                                                                                                                                   |
| plotme.use.dispose         | `plots.delete`                                                                                                                                                                                          |
| plotme.use.done            | `plots.done`                                                                                                                                                                                            |
| plotme.use.claim           | `plots.claim`                                                                                                                                                                                           |
| plotme.use.auto            | `plots.auto`                                                                                                                                                                                            |
| plotme.use.reset           | `plots.delete`                                                                                                                                                                                          |
| plotme.use.home            | `plots.home`                                                                                                                                                                                            |
| `plotme.use.info`          | `plots.info`                                                                                                                                                                                            |
| plotme.use.biome           | `plots.set`, `plots.set.biome`                                                                                                                                                                          |
| plotme.use.clear           | `plots.clear`                                                                                                                                                                                           |
| plotme.use.list            | `plots.list`, `plots.list.forsale`, `plots.list.mine`, `plots.list.shared`                                                                                                                              |
| plotme.use.add             | `plots.add`, `plots.trust`, `plots.add.everyone`, `plots.trust.everyone`                                                                                                                                |
| plotme.use.deny            | `plots.deny`, `plots.deny.everyone`                                                                                                                                                                     |
| plotme.use.remove          | `plots.remove`                                                                                                                                                                                          |
| plotme.use.undeny          | `plots.remove`                                                                                                                                                                                          |
| plotme.use.protect         | `plots.set`, `plots.flag`, `plots.set.flag`, `plots.set.flag.keep.*`                                                                                                                                    |
| plotme.use.nameplot        | `plots.alias.set`, `plots.alias.remove`                                                                                                                                                                 |
| plotme.limit.*             | `plots.plot.*`                                                                                                                                                                                          |
| plotme.limit.1             | `plots.plot.1`                                                                                                                                                                                          |
| plotme.limit.5             | `plots.plot.5`                                                                                                                                                                                          |
| plotme.limit.10            | `plots.plot.10`                                                                                                                                                                                         |

## Placeholder changes

### Additions:

* The placeholder `%plotsquared_currentplot_creationdate%` has been added showing the plot creation date. You can customize the format in the settings.yml timeformat section.
* The placeholders `%plotsquared_currentplot_members_trusted_list%`, `%plotsquared_currentplot_members_added_list%` and `%plotsquared_currentplot_members_denied_list%` have been added displaying a list of added/trusted/denied people.

### Changes:

* `%plotsquared_currentplot_world%` has been renamed to `%plotsquared_currentplot_world_name%`
* `%plotsquared_has_build_rights%` has been renamed to `%plotsquared_currentplot_can_build` matching more appropriately `/plot info`
* `%plotsquared_allowed_plot_count%` now returns `infinite` if you have * permission

## Command changes

* The command `/plot save` has been removed and replaced by Arkitektonika usable via `/plot download` ingame.
* The command `/plot download` has been overhauled with Arkitektonika. You now receive a deletion key alongside the download URL to delete the schematic whenever you want.
* The command `/plot wea` has been removed due deprecation and is superseded by `/plot toggle worldedit`. Alternative aliases are `/plot toggle wea` or `/plot toggle we`.
* `/plot help` now supports tab completion of categories and notifies the user if they cannot access certain help pages.

## Usability changes

* Tab completion has been added to (almost) all commands suggesting proper arguments if the user has permission.
* Vault is now being used as default currency allowing other plugins to provide their own currency ($, €, etc.)
* Destructive plot commands, such as `clear` or `delete` have been removed from plot worlds plots.
* A variety of plot commands now include the plot ID when running commands, e.g `/plot clear` or `/plot set biome`
* Plot world plots now use an underscore (`_`) as index separator instead of a (semi)colon.
* `/plot setowner` now respects grants

## Flag changes

### Additions:

* The flag `leaf-decay` has been added determining whether leaves should decay or not. The flag is set to true by default, you need to set it via `/plot flag set leaf-decay false` to stop leaves from decaying.
* The flag `fall-damage` has been added determining whether an entity or a player should take fall damage.
* The flag `crop-grow` has been added determining whether an crops can grow or not.
* The flags `deny-portals` and `deny-portal-travel` have been added determining whether portals can be created or not and can be used.
* The flag `deny-portal-travel` has been added determining whether players can travel thru portals across dimensions.
* The flag `lectern-read-book` has been added determining whether players can open lecterns to read books. Note: This requires the `use` flag set with `lectern` input.
* The flag `entity-change-block` has been added allowing to control misc entity events in a more controllable way, e.g if a player jumps on a big dripleaf.
+
### Changes:
* The flag `weather` now solely takes the couple of inputs `rain` and `clear` matching the vanilla naming scheme.

## Bug fixes (Only listing issues present in previous versions, not something introduced & addressed in v6)

* Fixed issue with plot saving and loading of merged plots [PS-29](https://issues.intellectualsites.com/issue/PS-29), [PS-197](https://issues.intellectualsites.com/issue/PS-197)
* Fixed an issue with players not being added to the plot but jumping in cauldrons to extinguish themself draining water [3034](https://github.com/IntellectualSites/PlotSquared/issues/3034)
* Fixed an issue where kicking/denying a player from a plot did not kick them from the server if no spawn location has been set up [3057](https://github.com/IntellectualSites/PlotSquared/issues/3057)
* Fixed a couple of issues related to the handling of dragon eggs [3074](https://github.com/IntellectualSites/PlotSquared/issues/3074), [3076](https://github.com/IntellectualSites/PlotSquared/issues/3076).
* Fixed an issue where `/plot rate` would not render empty item stacks [3063](https://github.com/IntellectualSites/PlotSquared/issues/3063)
* Compatibility and targeting Java 16
* Fixed a couple of issues with `/plot inbox`: [3021](https://github.com/IntellectualSites/PlotSquared/issues/3021), [3020](https://github.com/IntellectualSites/PlotSquared/issues/3021)

## Other changes

* Our [Javadocs](https://ci.athion.net/job/PlotSquared-v6-Javadocs/) are now searchable and link to external resources of our dependencies used.
* Full 1.17 support
* Requiring Java 16 or higher.

## v6.0.1

*Changes*:

* Changed version of PlotAPI to 6
* Deprecated API methods scheduled for removal will now outline they are going to be removed soon

*Fixes*:

* Fixed changing the locale not working after reboot but /plot reload [#3099](https://github.com/IntellectualSites/PlotSquared/issues/3099)
* Fixed not teleporting all players out of the plot on clear and delete if configured [#3102](https://github.com/IntellectualSites/PlotSquared/issues/3102)
* Fixed issues with Citizens using fake uuids [#3105](https://github.com/IntellectualSites/PlotSquared/issues/3105)

## v6.0.2

*Changes*:

* Update to the latest 1.17-compatible versions of FAWE

*Fixes*:

* Fix typo in expression parsing for plot pricing
* Do not allow moss spread on [#3100](https://github.com/IntellectualSites/PlotSquared/issues/3100)

## v6.0.3

*Fixes*:

* Don't attempt to load 1.17 listeners on earlier versions

## v6.0.4

**Fixes:

* Fix the regions found for merged plots (fixes some cases of issues with plot visit/home)

## v6.0.5

*Changes:*

* Check super types and interfaces on PlotPlayer#from [IntellectualSites/FastAsyncWorldEdit#1140](https://github.com/IntellectualSites/FastAsyncWorldEdit/issues/1140)
* The placeholder plotsquared_currentplot_rating does no longer display plot ratings in scientific notation if disabled [#3091](https://github.com/IntellectualSites/PlotSquared/issues/3091)

*Fixes*:

* Fixed update notification message, update your translations file by deleting it, pulling from crowdin or deleting all `update.` strings from the file located in the `/lang/` folder.
* Fixed plot.added/trusted/deny.+++<amount>+++permissions+++</amount>+++

## v6.0.6

*Additions:*

* Add `copper-oxide` flag

*Fixes*:

* Don't append color codes to component lore
* Fix issue when batching SQL queries
* Workaround for when plugins teleport players before they are fully online
* Don't error when attempting to visit plots outside max int range
* Handle `/p f add` message properly
* Projectile hits events and splash potions event cancellation is now handled properly
* Fix off-by-one error in schematic pasting
* Check plot ownership/event before handling Direction.ALL

## v6.0.7

*Additions:*

* Add option to strip user-defined click events in descriptions/farewells/greetings

*Fixes:*

* Fix issue with music flag displaying
* Fix boats and lilypad breaking on your own plot
* Fix various issues with projectiles not being removed properly
* Don't affect players in entity change block flag
* Allow players to evapourate snow on their own plot when on fire
