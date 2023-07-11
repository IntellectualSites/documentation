# Spigot Changelog from v4 and v5

## New PlotSquared features since 5.1+

* 100% Compatibility with PlotSquared version 4/5
* Complete rewrite of the flag system
* Improved tab completion and added tab completion to flags
* New extensive API allowing you to register custom flags
* Added new flag lookup commands for each flag
* Added support for vanilla item and block tags in flags
* Make golems be included in "animal-attack" flag
* Fixed various types of flags not working as intended
* Added new types of flags such as "coral-dry"
* Made all flags interact- and clickable
* Improved flag database handling
* Made all flags translatable (80+ custom strings)
* Improved MySQL Support
* Replaced current updater with spigot update notifications
* Improved existing and added new flags
* Bundled external placeholders into PlotSquared
* Added ability to customize bundled placeholders
* Ability to force clear all plots
* Prevent synchronous chunk loads throughout the plugin. This greatly reduces the impact `/plot auto` has on performance
* Persistent road generation (continues after server reboot)
* Added support for Schematic v2 (storing biomes, entities, etc.)
* Make sure clearing augmented plots with full vanilla terrain does not generate walls
* Added support for liquid plot borders
* Added ability to use redstone on server plots
* Fix retrieval of offline player profiles in 1.15
* Add an option to have `/plot purge` also clear the purged plots
* Overhauled plot pasting of merged plots
* PlotSquared events are now platform agnostic
* PlotSquared events are now tidier
* Improved the swapping/moving API
* Improved plot owner API
* Added "/plot caps" command to count and display mob and entity caps
* Overhauled mob and entity cap system
* Improve the code base internally by removing a bunch of magic values, and increasing code encapsulation
* Allow trusted users to use `/plot set`
* Complete rewrite of the wiki
* Include PAPI placeholders from the expansion
* Better organisation of the code base
* Added more API documentation
* Lots of smelly code cleanup
* Plot Backups
* Disallowed blocks for "/plot set"
* Prevent mobs from leaving the plot by wandering out
* Does no longer send chat spy to the sender
* "Keep-inventory" flag
