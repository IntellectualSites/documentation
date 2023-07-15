# Migrating from an older major release

## Introduction

If you are using PlotSquared version 4 or older, please read the following steps carefully in order to upgrade successfully to v5 or newer. Keep in mind you need to update additional dependencies, such as WorldEdit, Fawe or the server itself as well while updating PlotSquared in order to let P2 function properly.
Each major release contains its own migration handler, PlotSquared will attempt to upgrade its own files. Schematics can't be updated and need to be redone.

### Migrating from PlotMe:

1. Get the latest PlotMe version from [spigotmc.org](https://www.spigotmc.org/resources/plotme-official.2131). The zip contains 3 jars, but you need `PlotMe-Core.jar` only. Replace your current PlotMe version with the latest one.
2. Launch your server with the latest PlotMe version, check the log to ensure no errors (no errors means no errors by any plugin!!) occur, so you can start the migration.
3. Get the latest PlotSquared v3 from [bukkit.org](https://dev.bukkit.org/projects/plotsquared/files/2647923). Replace PlotMe with PlotSquared v3 and launch the server, ensure there are no errors or warnings and shut it down again.
4. Get the latest PlotSquared v4 from [spigotmc.org](https://www.spigotmc.org/resources/plotsquared-v4-v5-out-now.1177). Replace PlotSquared v3 with v4 and launch the server. Ensure there are no errors or warnings and shut it down again. If you encounter errors or warnings read them carefully and do what they tell you to do. Ignoring them can lead to further issues down the line. You may need to revisit `/plugins/PlotSquared/settings/worlds.yml` and perform material updates yourself. Versions prior to v5 weren't very smart in that aspect. Read the [1.18 PaperMC JavaDocs](https://papermc.io/javadocs/paper/1.18/org/bukkit/Material.html) for an up-to-date list of valid
   material names.
5. Get the latest PlotSquared v5 from [spigotmc.org](https://www.spigotmc.org/resources/plotsquared-v5.77506). Replace PlotSquared v4 with v5 and launch the server. Same procedure here, check your log and ensure no warnings or errors occur.

That's it. The conversion is done.

### Migrating from PlotSquared v3:

1. Get the latest PlotSquared v3 from [bukkit.org](https://dev.bukkit.org/projects/plotsquared/files/2647923). Replace your current version with PlotSquared v3 and launch the server, ensure there are no errors or warnings and shut it down again.
2. Get the latest PlotSquared v4 from [spigotmc.org](https://www.spigotmc.org/resources/plotsquared-v4-v5-out-now.1177/). Replace PlotSquared v3 with v4 and launch the server. Ensure there are no errors or warnings and shut it down again. If you encounter errors or warnings read them carefully and do what they tell you to do. Ignoring them can lead to further issues down the line. You may need to revisit `/plugins/PlotSquared/settings/worlds.yml` and perform material updates yourself. Versions prior to v5 weren't very smart in that aspect. Read the [1.18 PaperMC JavaDoc](https://papermc.io/javadocs/paper/1.18/org/bukkit/Material.html) for an up-to-date list of valid
material names.
3. Get the latest PlotSquared v5 from [spigotmc.org](https://www.spigotmc.org/resources/plotsquared-v5.77506). Replace PlotSquared v4 with v5 and launch the server. Same procedure here, check your log and ensure no warnings or errors occur.

That's it. The conversion is done.

### Migrating from PlotSquared v4:

1. Get the latest PlotSquared v4 from [spigotmc.org](https://www.spigotmc.org/resources/plotsquared-v4-v5-out-now.1177). Replace your current version with v4 and launch the server. Ensure there are no errors or warnings and shut it down again. If you encounter errors or warnings read them carefully and do what they tell you to do. Ignoring them can lead to further issues down the line.
2. Get the latest PlotSquared v5 from [spigotmc.org](https://www.spigotmc.org/resources/plotsquared-v6.77506/download?version=402158). Replace PlotSquared v4 with v5 and launch the server. Same procedure here, check your log and ensure no warnings or errors occur. You may need to revisit `/plugins/PlotSquared/settings/worlds.yml` and perform material updates yourself. Versions prior to v5 weren't very smart in that aspect. Read the [1.18 PaperMC JavaDocs](https://papermc.io/javadocs/paper/1.18/org/bukkit/Material.html) for an up-to-date list of valid
   material names. Visit the article [Updating from 1.12 to 1.13](updating-from-1.12-to-1.13.md) for further instructions.


That's it. The conversion is done.

### Migrating from PlotSquared v5:

1. Get the latest PlotSquared v5 from [spigotmc.org](https://www.spigotmc.org/resources/plotsquared-v6.77506/download?version=402158). Replace your current version with v5 and launch the server. Ensure there are no errors or warnings and shut it down again. If you encounter errors or warnings read them carefully and do what they tell you to do. Ignoring them can lead to further issues down the line.
2. Get the latest PlotSquared v6 from [spigotmc.org](https://www.spigotmc.org/resources/77506). Replace PlotSquared v5 with v6 and launch the server. Same procedure here, check your log and ensure no warnings or errors occur.
Read over the [Changelog for v6](../old/changelog-old.md) carefully to make sure you don't forgot manual updates down the line.

That's it. The conversion is done.
