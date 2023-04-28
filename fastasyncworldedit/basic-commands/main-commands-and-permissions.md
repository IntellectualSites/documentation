# Commands and Permissions


:experimental: // Used for keyboard buttons

## Introduction

To view this information ingame use `//help [category|command]`

## Command Syntax

* `<arg>` - A required parameter
* `[arg]` - An optional parameter
* `<arg1|arg2>` - Multiple parameters options
* `<arg=value>` - Default or suggested value
* `-a` - A command flag e.g. `//<command> -a [flag-value]`

See also:

* [Biomes](biomes.md)
* [Brushes](brushes.md)
* [Geometry](geometry.md)
* [Nature](nature.md)
* [Navigation](navigation.md)
* [Selection](selection.md)
* [Masks](../masks/masks.md)
* [Patterns](../patterns/patterns.md)
* [Transforms](../transforms/transforms.md)
<!--
## Content

Click on a category to go to the list of commands, or `More Info` for detailed descriptions

* <<_world_edit_commands,`World Edit Commands`>> (Updating, informational, debug and help commands)
* <<_utility_commands,`Utility Commands`>> (Various utility commands)
* <<_region_commands,`Region Commands`>> (Commands that operate on regions)
* <<_selection_commands,`Selection Commands`>> (Change your selection points, mode or view info about your selection)
* <<_history_commands,`History Commands`>> (Commands to undo, redo, and clear history)
* <<_schematic_commands,`Schematic Commands`>> (Commands that work with schematic files)
* <<_clipboard_commands,`Clipboard Commands`>> (Related commands to copy and pasting blocks)
* <<_generation_commands,`Generation Commands`>> (Create structures and features)
* https://worldedit.readthedocs.io/en/latest/commands/#biome-commands[Biome Commands]
* <<_super_pickaxe_commands,`Super Pickaxe Commands`>> (Super-pickaxe commands)
* <<_navigation_commands,`Navigation Commands`>> (Commands for moving the player around)
* <<_snapshot_commands,`Snapshot Commands`>> (List, load and view information related to snapshots)
* <<_scripting_commands,`Scripting Commands`>> (Run craftscripts)
* <<_chunk_commands_,`Chunk Commands`>> (Inspect chunks)
* <<_options_commands,`Options Commands`>> (Player toggles, settings and item info)
* <<_brush_options_commands,`Brush Options Commands`>> (Tool commands)
* <<_tool_commands,`Tool Commands`>> (Bind functions to held items)
* <<_brush_commands,`Brush Commands`>> (Commands to build and draw from far away.)
* <<_masks,`/Masks`>> (Help for the various masks. )
* <<_patterns_,`/Patterns`>> (Help for the various patterns.)
* <<_transforms_,`/Transforms`>> (Help for the various transforms.)
* <<_create_from_image_currently_not_implemented,`Create From Image`>> (Create a world from images, currently not implemented) -->

### Uncategorized

| Aliases          | Permission       | Flags  | Usage                                |
|------------------|------------------|--------|--------------------------------------|
| //cancel         | fawe.cancel      | None   | Cancels your current operations      |
| /plot replaceall | plots.replaceall | None   | Replace all blocks in the plot world |


### *World Edit Commands*
Informational, debug and help commands

#### /we threads

*Perm*: `worldedit.threads`  
*Desc*: Print all thread stacks

#### /we version

*Desc*: Get WorldEdit/FAWE version

#### /we help [\<command>]

*Perm*: `worldedit.help`  
*Desc*: Displays help for FAWE commands

#### /we reload

*Perm*: `worldedit.reload`  
*Desc*: Reload configuration

#### /we cui

*Desc*: Complete CUI handshake (internal usage)

#### /fawe debugpaste

*Perm*: `worldedit.debugpaste`  
*Desc*: Upload debug information to https://athion.net/ISPaster/paste

#### /we tz [timezone]

*Desc*: Set your timezone for snapshots

---

### *Utility Commands*
Various utility commands

---

#### /remove \<type> \<radius>

*Perm*: `worldedit.remove`  
*Desc*: Remove all entities of a type

#### //fill \<pattern> \<radius> [depth] [direction]

*Perm*: `worldedit.fill`  
*Desc*: Fill a hole

#### //help [\<command>]

*Desc*: Displays help for WorldEdit commands

#### //drain \<radius>

*Perm*: `worldedit.drain`  
*Desc*: Drain a pool

#### /transforms [page=1|search|transform]

*Perm*: `worldedit.transforms`  +
*Desc*: Transforms modify how a block is placed 
- Use [brackets] for arguments 
- Use , to OR multiple 
- Use & to AND multiple 

#### //removenear \<block> [size]

*Perm*: `worldedit.removenear`  
*Desc*: Remove blocks near you.

#### //fixlava \<radius>

*Perm*: `worldedit.fixlava`  
*Desc*: Fix lava to be stationary

#### //removeabove [size] [height]

*Perm*: `worldedit.removeabove`  
*Desc*: Remove blocks above your head.

#### /masks [page=1|search|mask]

*Perm*: `worldedit.masks`  
*Desc*: Masks determine if a block can be placed 
- Use [brackets] for arguments 
- Use , to OR multiple 
- Use & to AND multiple 

e.g. >[stone,dirt],#light[0][5],$jungle 

#### //fillr \<pattern> \<radius> [depth]

*Perm*: `worldedit.fill.recursive`  
*Desc*: Fill a hole recursively

#### /patterns [page=1|search|pattern]

*Perm*: `worldedit.patterns`  
*Desc*: Patterns determine what blocks are placed 
- Use [brackets] for arguments 
- Use , to OR multiple 

e.g. #surfacespread[10][#existing],andesite 

#### //replacenear \<size> \<from-id> \<to-id> [-f]

*Perm*: `worldedit.replacenear`  
*Desc*: Replace nearby blocks

#### //snow [radius]

*Perm*: `worldedit.snow`  
*Desc*: Simulates snow

#### //thaw [radius]

*Perm*: `worldedit.thaw`  
*Desc*: Thaws the area

#### //removebelow [size] [height]

*Perm*: `worldedit.removebelow`  
*Desc*: Remove blocks below you.

#### //fixwater \<radius>

*Perm*: `worldedit.fixwater`  
*Desc*: Fix water to be stationary

#### /butcher [radius] [-p] [-l] [-a] [-n] [-g] [-b] [-t] [-f] [-r]

*Perm*: `worldedit.butcher`  
*Desc*: Kills nearby mobs, based on radius, if none is given uses default in configuration. 
Flags: 
-p also kills pets.  
-n also kills NPCs.  
-g also kills Golems.  
-a also kills animals.  
-b also kills ambient mobs.  
-t also kills mobs with name tags.  
-f compounds all previous flags.  
-r also destroys armor stands.  
-l currently does nothing. 

#### //confirm

*Perm*: `fawe.confirm`  
*Desc*: Confirm a command

#### //green [radius] [-f]

*Perm*: `worldedit.green`  
*Desc*: Greens the area

#### //calc \<expression>

*Perm*: `worldedit.calc`  
*Desc*: Evaluate a mathematical expression

#### //ex [radius]

*Perm*: `worldedit.extinguish`  
*Desc*: Extinguish nearby fire

#### /heightmapinterface

*Perm*: `fawe.admin` 
*Desct*: Generates the heightmap interface

---

### *Region Commands*
Commands that operate on regions
---

#### //replace [from-mask] \<to-pattern> [-f]

*Perm*: `worldedit.region.replace`  
*Desc*: Replace all blocks in the selection with another

#### //stack [count] [direction] [-s] [-a] [-m]

*Perm*: `worldedit.region.stack`  
*Desc*: Repeats the contents of the selection. 
Flags:  
-s shifts the selection to the last stacked copy  
-a skips air blocks

#### //set [pattern]

*Perm*: `worldedit.region.set`  
*Desc*: Set all blocks within selection

#### //fall [replace] [-m]

*Perm*: `worldedit.region.fall`  
*Desc*: Make the blocks in the selection fall  
The -m flag will only fall within the vertical selection.

#### //faces \<pattern>

*Perm*: `worldedit.region.faces`  
*Desc*: Build the walls, ceiling, and floor of a selection

#### //hollow [\<thickness>[ \<pattern>]]

*Perm*: `worldedit.region.hollow`  
*Desc*: Hollows out the object contained in this selection.  
Optionally fills the hollowed out part with the given block.  
Thickness is measured in manhattan distance.

#### //center \<pattern>

*Perm*: `worldedit.region.center`  
*Desc*: Set the center block(s)

#### //setskylight

*Perm*: `worldedit.light.set`  
*Desc*: Set sky lighting in a selection

#### //nbtinfo

*Perm*: `worldedit.nbtinfo`  
*Desc*: View nbt info for a block

#### //setblocklight

*Perm*: `worldedit.light.set`  
*Desc*: Set block lighting in a selection

#### //curve \<pattern> [thickness] [-h]

*Perm*: `worldedit.region.curve`  
*Desc*: Draws a spline through selected points.  
Can only be used with convex polyhedral selections.  
Flags:  
-h generates only a shell

#### //overlay \<pattern>

*Perm*: `worldedit.region.overlay`  
*Desc*: Set a block on top of blocks in the region

#### //lay \<pattern>

*Perm*: `worldedit.region.overlay`  
*Desc*: Set the top block in the region

#### //naturalize

*Perm*: `worldedit.region.naturalize`  
*Desc*: 3 layers of dirt on top then rock below

#### //walls \<pattern>

*Perm*: `worldedit.region.walls`  
*Desc*: Build the four sides of the selection

#### //getlighting

*Perm*: `worldedit.light.fix`  
*Desc*: Get the light at a position

#### //removelight

*Perm*: `worldedit.light.remove`  
*Desc*: Removing lighting in a selection

#### //fixlighting

*Perm*: `worldedit.light.fix`  
*Desc*: Get the light at a position

#### //smooth [iterations] [mask]

*Perm*: `worldedit.region.smooth`  
*Desc*: Smooths the elevation in the selection. 
Flags:   
-l Set the amount of snow blocks under the snow   
-m The mask of blocks to use as the height map

#### //line \<pattern> [thickness] [-h]

*Perm*: `worldedit.region.line`  
*Desc*: Draws a line segment between cuboid selection corners. 
Can only be used with cuboid selections. 
Flags:  
-h generates only a shell

#### //regen [biome] [seed]

*Perm*: `worldedit.regen`   
*Desc*: Regenerates the contents of the current selection. 
This command might affect things outside the selection,   
if they are within the same chunk.

#### //wea

*Perm*: `fawe.admin`  
*Desc*: Bypass region restrictions

#### //move [count] [direction] [leave-id] [-s]

*Perm*: `worldedit.region.move`   
*Desc*: Moves the contents of the selection.  
-s flag shifts the selection to the target location.  
-b also copies biomes  
-e ignores entities  
-a ignores air  
Optionally fills the old location with .

#### //forest [type] [density]

*Perm*: `worldedit.region.forest`  
*Desc*: Make a forest within the region

#### //deform \<expression> [-r] [-o]

*Perm*: `worldedit.region.deform`  
*Desc*: Deforms a selected region with an expression  
The expression is executed for each block and is expected  
to modify the variables x, y and z to point to a new block  
to fetch. See also tinyurl.com/wesyntax.

#### //flora [density]

*Perm*: `worldedit.region.flora`  
*Desc*: Make flora within the region

#### //wer

*Perm*: `fawe.worldeditregion`   
*Desc*: Select your current allowed region

---

### *Selection Commands*
Change your selection points, mode or view info about your selection
---

#### //count \<block> [-d]

*Perm*: `worldedit.analysis.count`   
*Desc*: Counts the number of a certain type of block

#### //size  [-c]

*Perm*: `worldedit.selection.size`   
*Desc*: Get information about the selection

#### //expand \<amount> [reverse-amount] \<direction>

*Perm*: `worldedit.selection.expand`   
*Desc*: Expand the selection area

#### //shift \<amount> [direction]

*Perm*: `worldedit.selection.shift`  
*Desc*: Shift the selection area

#### //sel [cuboid|extend|poly|ellipsoid|sphere|cyl|convex] [-d]

*Desc*: Choose a region selector

#### //contract \<amount> [reverse-amount] [direction]

*Perm*: `worldedit.selection.contract`  
*Desc*: Contract the selection area

#### //pos2 [coordinates]

*Perm*: `worldedit.selection.pos`  
*Desc*: Set position 2

#### //pos1 [coordinates]

*Perm*: `worldedit.selection.pos`  
*Desc*: Set position 1

#### //chunk [x,z coordinates] [-s] [-c]

*Perm*: `worldedit.selection.chunk`  
*Desc*: Set the selection to the chunk you are currently in.  
With the -s flag, your current selection is expanded  
to encompass all chunks that are part of it.  
 +
Specifying coordinates will use those instead of your  
current position. Use -c to specify chunk coordinates,  
otherwise full coordinates will be implied.  
(for example, the coordinates 5,5 are the same as -c 0,0)

#### //hpos1

*Perm*: `worldedit.selection.hpos`   
*Desc*: Set position 1 to targeted block

#### //outset \<amount> [-h] [-v]

*Perm*: `worldedit.selection.outset`   
*Desc*: Expands the selection by the given amount in all directions.  
Flags:  
-h only expand horizontally  
-v only expand vertically

#### //wand

*Perm*: `worldedit.wand`   
*Desc*: Get the wand object

#### /toggleeditwand

*Perm*: `worldedit.wand.toggle`   
*Desc*: Toggle functionality of the edit wand

#### //hpos2

*Perm*: `worldedit.selection.hpos`   
*Desc*: Set position 2 to targeted block

#### //inset \<amount> [-h] [-v]

*Perm*: `worldedit.selection.inset`   
*Desc*: Contracts the selection by the given amount in all directions.  
Flags:  
-h only contract horizontally  
-v only contract vertically

#### //distr  [-c] [-d]

*Perm*: `worldedit.analysis.distr`   
*Desc*: Gets the distribution of blocks in the selection.  
The -c flag gets the distribution of your clipboard.  
The -d flag separates blocks by data

---

### *History Commands*
Commands to undo, redo, and clear history
---

#### //clearhistory

*Perm*: `worldedit.history.clear`   
*Desc*: Clear your history

#### //undo [times] [player]

*Perm*: `worldedit.history.undo`   
*Desc*: Undoes the last action

#### //redo [times] [player]

*Perm*: `worldedit.history.redo`   
*Desc*: Redoes the last action (from history)

#### //inspect

*Perm*: `worldedit.tool.inspect`   
*Desc*: Scan blocks for changes

#### //frb history \<user=Empire92> \<radius=5> \<time=3d4h>

*Perm*: `worldedit.history.rollback`   
*Desc*: Undo a specific edit.  - The time uses s, m, h, d, y.  
- Import from disk: /frb #import

---

### *Schematic Commands*
Commands that work with schematic files
---

#### /schematic clear

*Perm*: `worldedit.clipboard.clear`, `worldedit.schematic.clear`   
*Desc*: Clear your clipboard

#### /schematic load [\<format>] \<filename>

*Perm*: `worldedit.clipboard.load`, `worldedit.schematic.load`, `worldedit.schematic.upload`, `worldedit.schematic.load.other`   
*Desc*: Load a schematic into your clipboard

#### /schematic delete \<filename|*>

*Perm*: `worldedit.schematic.delete`, `worldedit.schematic.delete.other`   
*Desc*: Delete a schematic from the schematic list

#### /schematic list [global|mine|\<filter>] [page=1] [-d] [-n] [-p]

*Perm*: `worldedit.schematic.list`   
*Desc*: List all schematics in the schematics directory  
-p prints the requested page  
-f restricts by format

#### /schematic save [format] \<filename>

*Perm*: `worldedit.clipboard.save`, `worldedit.schematic.save`, `worldedit.schematic.save.other`  
*Desc*: Save a schematic into your clipboard

#### /schematic unload [file]

*Perm*: `worldedit.clipboard.clear`, `worldedit.schematic.clear`  
*Desc*: Remove a clipboard from your multi-clipboard

#### /schematic loadall [<format>] \<filename|url>

*Perm*: `worldedit.clipboard.load`, `worldedit.schematic.load`, `worldedit.schematic.upload`  
*Desc*: Load multiple clipboards  
The -r flag will apply random rotation

#### /schematic move \<directory>

*Perm*: `worldedit.schematic.move`, `worldedit.schematic.move.other`   
*Desc*: Move your currently loaded schematics

#### /schematic formats

*Perm*: `worldedit.schematic.formats`   
*Desc*: List available formats

#### /schematic show [global|mine|<filter>] [-d] [-n] [-p]

*Perm*: `worldedit.schematic.show`   
*Desc*: List all schematics in the schematics directory  
-f restricts by format

---

### *Clipboard Commands*
Related commands to copy and pasting blocks
---

#### //copy  [-e] [-m]

*Perm*: `worldedit.clipboard.copy`   
*Desc*: Copy the selection to the clipboard  
Flags:  
-e also copy entities  
-m sets a source mask so that excluded blocks become air  
-b copies biomes  
WARNING: Pasting entities cannot yet be undone!

#### //flip [\<direction>]

*Perm*: `worldedit.clipboard.flip`   
*Desc*: Flips the contents of the clipboard across the point from which the copy was made.

#### //rotate \<y-axis> [\<x-axis>] [\<z-axis>]

*Perm*: `worldedit.clipboard.rotate`   
*Desc*: Non-destructively rotate the contents of the clipboard.  
Angles are provided in degrees and a positive angle will result in a clockwise rotation. Multiple rotations can be stacked. Interpolation is not performed so angles should be a multiple of 90 degrees.

#### //lazycopy  [-e] [-m]

*Perm*: `worldedit.clipboard.lazycopy`   
*Desc*: Lazily copy the selection to the clipboard  
Flags:  
-e skips copying entities  
-m sets a source mask so that excluded blocks become air  
-b copies biomes  
WARNING: Pasting entities cannot yet be undone!

#### /asset [category]

*Perm*: `worldedit.clipboard.asset`   
*Desc*: Saves your clipboard to the asset web interface

#### //cut [leave-id] [-e] [-m]

*Perm*: `worldedit.clipboard.cut`   
*Desc*: Copy the selection to the clipboard  
Flags:  
-e skips entity copy  
-m sets a source mask so that excluded blocks become air  
-b copies biomes  
WARNING: Cutting and pasting entities cannot yet be undone!

#### /download `

*Perm*: `worldedit.clipboard.download`   
*Desc*: Downloads your clipboard through the configured web interface

#### //paste  [-s] [-a] [-o]

*Perm*: `worldedit.clipboard.paste`   
*Desc*: Pastes the clipboard's contents.  
Flags:  
-a skips air blocks  
-b skips pasting biomes  
-e skips pasting entities  
-o pastes at the original position  
-s selects the region after pasting

#### //lazycut  [-e] [-m]

*Perm*: `worldedit.clipboard.lazycut`   
*Desc*: Lazily cut the selection to the clipboard  
Flags:  
-e skips entity copy  
-m sets a source mask so that excluded blocks become air  
-b copies biomes  
WARNING: Pasting entities cannot yet be undone!

#### //place  [-s] [-a] [-o]

*Perm*: `worldedit.clipboard.place`   
*Desc*: Places the clipboard's contents without applying transformations (e.g. rotate).  
Flags:  
-a skips air blocks  
-o pastes at the original position  
-s selects the region after pasting

#### /clearclipboard

*Perm*: `worldedit.clipboard.clear`   
*Desc*: Clear your clipboard

---

### *Generation Commands*
Create structures and features
---

#### //image \<imgur> [randomize=true] [complexity=100] [dimensions]

*Perm*: `worldedit.generation.image`   
*Desc*: Generate an image

#### //generate \<pattern> \<expression> [-h] [-r] [-o] [-c]

*Perm*: `worldedit.generation.shape`   
*Desc*: Generates a shape according to a formula that is expected to  
return positive numbers (true) if the point is inside the shape  
Optionally set type/data to the desired block.  
Flags:  
-h to generate a hollow shape  
-r to use raw minecraft coordinates  
-o is like -r, except offset from placement.  
-c is like -r, except offset selection center.  
If neither -r nor -o is given, the selection is mapped to -1..1  
See also tinyurl.com/wesyntax.

#### //pyramid \<pattern> \<size> [-h]

*Perm*: `worldedit.generation.pyramid`   
*Desc*: Generate a filled pyramid

#### //sphere \<pattern> \<radius>[,\<radius>,\<radius>] [raised?] [-h]

*Perm*: `worldedit.generation.sphere`   
*Desc*: Generates a filled sphere.  
By specifying 3 radii, separated by commas,  
you can generate an ellipsoid. The order of the ellipsoid radii  
is north/south, up/down, east/west.

#### //cyl \<pattern> \<radius>[,\<radius>] [height] [-h]

*Perm*: `worldedit.generation.cylinder`   
*Desc*: Generates a cylinder.  
By specifying 2 radii, separated by a comma,  
you can generate elliptical cylinders.  
The 1st radius is north/south, the 2nd radius is east/west.

#### /pumpkins [size]

*Perm*: `worldedit.generation.pumpkins`   
*Desc*: Generate pumpkin patches

#### //hsphere \<pattern> \<radius>[,\<radius>,\<radius>] [raised?]

*Perm*: `worldedit.generation.sphere`   
*Desc*: Generates a hollow sphere.  
By specifying 3 radii, separated by commas,  
you can generate an ellipsoid. The order of the ellipsoid radii  
is north/south, up/down, east/west.

#### //hcyl \<pattern> \<radius>[,\<radius>] [height]

*Perm*: `worldedit.generation.cylinder`   
*Desc*: Generates a hollow cylinder.  
By specifying 2 radii, separated by a comma,  
you can generate elliptical cylinders.  
The 1st radius is north/south, the 2nd radius is east/west.

#### //caves [size=8] [freq=40] [rarity=7] [minY=8] [maxY=127] [sysFreq=1] [sysRarity=25] [pocketRarity=0] [pocketMin=0] [pocketMax=3]

*Perm*: `worldedit.generation.caves`   
*Desc*: Generates a cave network

#### //ore \<mask> \<pattern> \<size> \<freq> \<rarity> \<minY> \<maxY>

*Perm*: `worldedit.generation.ore`   
*Desc*: Generates ores

#### /forestgen [size] [tree-type] [density]

*Perm*: `worldedit.generation.forest`   
*Desc*: Generate a forest

#### //hpyramid \<pattern> \<size>

*Perm*: `worldedit.generation.pyramid`   
*Desc*: Generate a hollow pyramid

#### //ores

*Perm*: `worldedit.generation.ore`   
*Desc*: Generates ores

#### //generatebiome \<biome> \<expression> [-h] [-r] [-o] [-c]

*Perm*: `worldedit.generation.shape`, `worldedit.biome.set`   
*Desc*: Generates a shape according to a formula that is expected to  
return positive numbers (true) if the point is inside the shape  
Sets the biome of blocks in that shape.  
Flags:  
-h to generate a hollow shape  
-r to use raw minecraft coordinates  
-o is like -r, except offset from placement.  
-c is like -r, except offset selection center.  
If neither -r nor -o is given, the selection is mapped to -1..1  
See also tinyurl.com/wesyntax.

---

### *Biome Commands*
Change, list and inspect biomes
---

#### //setbiome \<biome> [-p]

*Perm*: `worldedit.biome.set`   
*Desc*: Set the biome of the region.  
By default use all the blocks contained in your selection.  
-p use the block you are currently in

#### /biomelist [page]

*Perm*: `worldedit.biome.list`   
*Desc*: Gets all biomes available.

#### /biomeinfo  [-p] [-t]

*Perm*: `worldedit.biome.info`   
*Desc*: Get the biome of the block.  
By default use all the blocks contained in your selection.  
-t use the block you are looking at.  
-p use the block you are currently in

---

### *Super Pickaxe Commands*
Super-pickaxe commands
---

#### /sp recur \<radius>

*Perm*: `worldedit.superpickaxe.recursive`   
*Desc*: Enable the recursive super pickaxe mode

#### /sp area \<radius>

*Perm*: `worldedit.superpickaxe.area`   
*Desc*: Enable the area super pickaxe mode

#### /sp single

*Perm*: `worldedit.superpickaxe`   
*Desc*: Enable the single block super pickaxe mode

---

### *Navigation Commands*
Commands for moving the player around
---

#### /unstuck

*Perm*: `worldedit.navigation.unstuck`   
*Desc*: Escape from being stuck inside a block

#### /thru

*Perm*: `worldedit.navigation.thru.command`   
*Desc*: Passthrough walls

#### /jumpto [world,x,y,z]

*Perm*: `worldedit.navigation.jumpto.command`  
*Desc*: Teleport to a location

#### /up <number> [-f] [-g]

*Perm*: `worldedit.navigation.up`  
*Desc*: Go upwards some distance

#### /ascend [# of levels]

*Perm*: `worldedit.navigation.ascend`  
*Desc*: Go up a floor

#### /ceil [clearance] [-f] [-g]

*Perm*: `worldedit.navigation.ceiling`  
*Desc*: Go to the celing

#### /descend [# of floors]

*Perm*: `worldedit.navigation.descend`  
*Desc*: Go down a floor

---

### *Snapshot Commands*
List, load and view information related to snapshots
---

#### /snapshot list [num]

*Perm*: `worldedit.snapshots.list`  
*Desc*: List snapshots

#### /snapshot after \<date>

*Perm*: `worldedit.snapshots.restore`  
*Desc*: Choose the nearest snapshot after a date

#### /snapshot before \<date>

*Perm*: `worldedit.snapshots.restore`  
*Desc*: Choose the nearest snapshot before a date

#### /snapshot use \<snapshot>

*Perm*: `worldedit.snapshots.restore`  
*Desc*: Choose a snapshot to use

#### /snapshot sel \<index>

*Perm*: `worldedit.snapshots.restore`  
*Desc*: Choose the snapshot based on the list id

---

### *Snapshot Util Commands*

---

#### /restore [snapshot]

*Perm*: `worldedit.snapshots.restore`  
*Desc*: Restore the selection from a snapshot

---

### *Scripting Commands*
Run craftscripts
---

#### +/cs <filename> [args...]+

*Perm*: `worldedit.scripting.execute`  
*Desc*: Execute a CraftScript

#### +/.s [args...]+

*Perm*: `worldedit.scripting.execute`  
*Desc*: Execute last CraftScript

---

### *Chunk Commands*
Inspect chunks

---

#### /chunkinfo

*Perm*: `worldedit.chunkinfo`  
*Desc*: Get information about the chunk that you are inside

#### /delchunks

*Perm*: `worldedit.delchunks`

#### /listchunks

*Perm*: `worldedit.listchunks`  
*Desc*: List chunks that your selection includes

---

### *Options Commands*
Player toggles, settings and item info

---

#### //fast [on|off]

*Perm*: `worldedit.fast`  
*Desc*: Toggles FAWE undo

#### //gsmask [mask]

*Perm*: `worldedit.global-mask`  
*Desc*: The global source mask applies to all edits you do and masks based on the source blocks (e.g. the blocks in your clipboard)

#### //gtransform [transform]

*Perm*: `worldedit.global-transform`  
*Desc*: Set the global transform

#### //toggleplace

*Desc*: Switch between your position and pos1 for placement

#### //searchitem \<query> [-b] [-i]

*Perm*: `worldedit.searchitem`  
*Desc*: Searches for an item.  
Flags:  
-b only search for blocks  
-i only search for items

#### //gmask [mask]

*Perm*: `worldedit.global-mask`  
*Desc*: The global destination mask applies to all edits you do and masks based on the destination blocks (i.e. the blocks in the world).

#### //tips

*Perm*: `fawe.tips`  
*Desc*: Toggle FAWE tips

---

### *Brush Options Commands*
Tool commands

---

#### /target [1 - 4]

* Target Public Range
* Forward Point Pitch
* Target Point Height
* Target Face Range +
*Desc*: Toggle between different target modes

#### /size [pattern]

*Perm*: `worldedit.brush.options.size`  
*Desc*: Set the brush size

#### //listbrush [mine|<filter>] [page=1] [-d] [-n] [-p]

*Perm*: `worldedit.brush.list`  
*Desc*: List all brushes in the brush directory  
-p prints the requested page

#### /range [pattern]

*Perm*: `worldedit.brush.options.range`  
*Desc*: Set the brush range

#### /mask [mask]

*Perm*: `worldedit.brush.options.mask`  
*Desc*: Set the brush destination mask

#### /transform [transform]

*Perm*: `worldedit.brush.options.transform`  
*Desc*: Set the brush transform

#### /mat [pattern]

*Perm*: `worldedit.brush.options.material`  
*Desc*: Set the brush material

#### /loadbrush [name]

*Perm*: `worldedit.brush.load`  
*Desc*: load a brush

#### /smask [mask]

*Perm*: `worldedit.brush.options.mask`  
*Desc*: Set the brush source mask

#### /visualize [mode=0]

*Perm*: `worldedit.brush.visualize`  
*Desc*: Toggle between different visualization modes 
0 = No visualization  
1 = Single block at target position  
2 = Glass showing what blocks will be changed

#### // [on|off]

*Perm*: `worldedit.superpickaxe`  
*Desc*: Toggle the super pickaxe function

#### /targetmask [mask]

*Perm*: `worldedit.brush.targetmask`  
*Desc*: Set the targeting mask

#### /targetoffset [mask]

*Perm*: `worldedit.brush.targetoffset`  
*Desc*: Set the targeting mask

#### /primary [brush-arguments]

*Perm*: `worldedit.brush.primary`  
*Desc*: Set the right click brush

#### /none

*Desc*: Unbind a bound tool from your current item

#### /secondary [brush-arguments]

*Perm*: `worldedit.brush.secondary`  
*Desc*: Set the left click brush

#### /savebrush [name]

*Perm*: `worldedit.brush.save`  
*Desc*: Save your current brush  
use the -g flag to save globally

#### /scroll [none|clipboard|mask|pattern|range|size|visual|target]

*Perm*: `worldedit.brush.scroll`   
*Desc*: Toggle between different target modes

---

### *Tool Commands*
Bind functions to held items

---

#### /tool tree [type]

*Perm*: `worldedit.tool.tree`   
*Desc*: Tree generator tool

#### /tool repl \<block>

*Perm*: `worldedit.tool.replacer`   
*Desc*: Block replacer tool

#### /tool info

*Perm*: `worldedit.tool.info`   
*Desc*: Block information tool

#### /tool lrbuild \<leftclick block> \<rightclick block>

*Perm*: `worldedit.tool.lrbuild`  
*Desc*: Long-range building tool

#### /tool inspect

*Perm*: `worldedit.tool.inspect`  
*Desc*: Chooses the inspect brush

#### /tool farwand

*Perm*: `worldedit.tool.farwand`  
*Desc*: Wand at a distance tool

#### /tool floodfill \<pattern> \<range>

*Perm*: `worldedit.tool.flood-fill`  
*Desc*: Flood fill tool

#### /tool cycler

*Perm*: `worldedit.tool.data-cycler`  
*Desc*: Block data cycler tool

#### /tool deltree

*Perm*: `worldedit.tool.deltree`  
*Desc*: Floating tree remover tool

---

### *Brush Commands*
Commands to build and draw from far away

---

#### /brush copypaste [depth=5]

*Perm*: `worldedit.brush.copy`  
*Desc*: Left click the base of an object to copy.  
Right click to paste  
The -r flag Will apply random rotation on paste  
The -a flag Will apply auto view based rotation on paste  
Note: Works well with the clipboard scroll action  
Video: https://www.youtube.com/watch?v=RPZIaTbqoZw

#### +/brush command \<radius> [cmd1;cmd2...]+

*Perm*: `worldedit.brush.command`   
*Desc*: Run the commands at the clicked position.  
- Your selection will be expanded to the specified size around each point  
- Placeholders: \{x}, \{y}, \{z}, \{world}, \{size}

#### /brush populateschematic \<mask> \<file|folder|url> [radius=30] [points=5] [-r]

*Perm*: `worldedit.brush.populateschematic`   
*Desc*: Chooses the scatter schematic brush.  
The -r flag will apply random rotation

#### /brush scmd \<scatter-radius> \<points> \<cmd-radius=1> \<cmd1;cmd2...>

*Perm*: `worldedit.brush.scattercommand`   
*Desc*: Run commands at random points on a surface  
- The scatter radius is the min distance between each point  
- Your selection will be expanded to the specified size around each point  
- Placeholders: \{x}, \{y}, \{z}, \{world}, \{size}

#### /brush shatter \<pattern> [radius=10] [count=10]

*Perm*: `worldedit.brush.shatter`   
*Desc*: Creates uneven lines separating terrain into multiple pieces  
Pic: https://i.imgur.com/2xKsZf2.png

#### /brush erode [radius=5]

*Perm*: `worldedit.brush.erode`   
*Desc*: Erodes terrain

#### /brush sphere \<pattern> [radius=2] [-h] [-f]

*Perm*: `worldedit.brush.sphere`   
*Desc*: Creates a sphere.  
The -h flag creates hollow spheres instead.The -f flag creates falling spheres.

#### /brush pull [radius=5]

*Perm*: `worldedit.brush.pull`   
*Desc*: Pull terrain towards you

#### /brush stencil \<pattern> [radius=5] [file|#clipboard|imgur=null] [rotation=360] [yscale=1.0]

*Perm*: `worldedit.brush.stencil`   
*Desc*: Use a height map to paint any surface.  
The -w flag will only apply at maximum saturation  
The -r flag will apply random rotation

#### /brush recursive \<pattern-to> [radius=5]

*Perm*: `worldedit.brush.recursive`   
*Desc*: Set all connected blocks  
The -d flag Will apply in depth first order  
Note: Set a mask to recurse along specific blocks

#### /brush spline \<pattern>

*Perm*: `worldedit.brush.spline`   
*Desc*: Click to select some objects,click the same block twice to connect the objects.  
Insufficient brush radius, or clicking the wrong spot will result in undesired shapes. The shapes must be simple lines or loops.  
Pic1: http://i.imgur.com/CeRYAoV.jpg \-> http://i.imgur.com/jtM0jA4.png  
Pic2: http://i.imgur.com/bUeyc72.png \-> http://i.imgur.com/tg6MkcF.pngTutorial: https://www.planetminecraft.com/blog/fawe-tutorial/

#### /brush sweep [copies=-1]

*Perm*: `worldedit.brush.sweep`   
*Desc*: Sweeps your clipboard content along a curve.  
Define a curve by selecting the individual points with a brush  
Set [copies] to a value > 0 if you want to have your selection pasted a limited amount of times equally spaced on the curve

#### /brush catenary \<pattern> [lengthFactor=1.2] [size=0]

*Perm*: `worldedit.brush.spline`   
*Desc*: Create a hanging line between two points.  
The lengthFactor controls how long the line is  
The -h flag creates only a shell  
The -s flag selects the clicked point after drawing

#### /brush line \<pattern> [radius=0] [-h] [-s] [-f]

*Perm*: `worldedit.brush.line`   
*Desc*: Create lines.  
The -h flag creates only a shell  
The -s flag selects the clicked point after drawing  
The -f flag creates a flat line

#### /brush sspl \<pattern> [size=0] [tension=0] [bias=0] [continuity=0] [quality=10]

*Perm*: `worldedit.brush.surfacespline`   
*Desc*: Create a spline on the surface  
Video: https://www.youtube.com/watch?v=zSN-2jJxXlM

#### /brush blendball [-a] [radius=5] [minFreqDiff=1] [-m]

*Perm*: `worldedit.brush.blendball`   
*Desc*: Smooths and blends terrain  
 - The `-a` flag sets that the brush should only compare air vs existing blocks
 - `-m` sets a mask to limit blocks being considered for smoothing
Pic: https://i.imgur.com/cNUQUkj.png \-> https://i.imgur.com/hFOFsNf.png

#### /brush circle \<pattern> [radius=5]

*Perm*: `worldedit.brush.sphere`  
*Desc*: Creates a circle which revolves around your facing direction.  
Note: Decrease brush radius, and enabled visualization to assist with placement mid-air

#### /brush rock \<pattern> [radius=10] [roundness=100] [frequency=30] [amplitude=50] [-h]

*Perm*: `worldedit.brush.rock`   
*Desc*: Creates a distorted sphere

#### /brush height [-lrs] [radius] [yscale] [image] [rotation]

*Perm*: `worldedit.brush.height`   
*Desc*: This brush raises and lowers land.  
- The `-r` flag enables random off-axis rotation  
- The `-l` flag will work on snow layers  
- The `-s` flag disables smoothing  
Note: Use a negative yscale to reduce height  
Snow Pic: https://i.imgur.com/Hrzn0I4.png

#### /brush flatten [radius=5] [file|#clipboard|imgur=null] [rotation=0] [yscale=1.00] [-h]

*Perm*: `worldedit.brush.height`   
*Desc*: Flatten brush flattens terrain  
- The `-r` flag enables random off-axis rotation  
- The `-l` flag will work on snow layers  
- The `-s` flag disables smoothing

#### /brush layer \<radius> \<patternLayer>

*Perm*: `worldedit.brush.layer`   
*Desc*: Replaces terrain with a layer.  
Example: /br layer 5 oak_planks,orange_stained_glass,magenta_stained_glass,black_wool - Places several layers on a surface  
Pic: https://i.imgur.com/XV0vYoX.png

#### /brush cylinder \<pattern> [radius=2] [height=1] [-h]

*Perm*: `worldedit.brush.cylinder`   
*Desc*: Creates a cylinder.  
The -h flag creates hollow cylinders instead.

#### /brush surface \<pattern> [radius=5]

*Perm*: `worldedit.brush.surface`   
*Desc*: Use a height map to paint any surface.  
The -w flag will only apply at maximum saturation  
The -r flag will apply random rotation

#### /brush ex [radius=5]

*Perm*: `worldedit.brush.ex`   
*Desc*: Shortcut fire extinguisher brush

#### /brush gravity [radius=5] [-h]

*Perm*: `worldedit.brush.gravity`   
*Desc*: This brush simulates the affect of gravity.  
The -h flag makes it affect blocks starting at the world's max y, instead of the clicked block's y + radius.

#### /brush clipboard [-a] [-o] [-e] [-b] [-m]

*Perm*: `worldedit.brush.clipboard`   
*Desc*: Chooses the clipboard brush.  
The -a flag makes it not paste air.  
Without the -o flag, the paste will appear centered at the target location. With the flag, then the paste will appear relative to where you had stood relative to the copied area when you copied it.  
-e pastes entities  
-b pastes biomes, if available  
-m Skips blocks matching a mask in the clipboard

#### /brush butcher [radius=5] [-p] [-l] [-a] [-n] [-g] [-b] [-t] [-f] [-r]

*Perm*: `worldedit.brush.butcher`   
*Desc*: Kills nearby mobs within the specified radius.  
Flags: +
-p also kills pets.  
-n also kills NPCs.  
-g also kills Golems.  
-a also kills animals.  
-b also kills ambient mobs.  
-t also kills mobs with name tags.  
-f compounds all previous flags.  
-r also destroys armor stands.  
-l currently does nothing.

#### /brush splatter \<pattern> [radius=5] [seeds=1] [recursion=5] [solid=true]

*Perm*: `worldedit.brush.splatter`   
*Desc*: Sets a bunch of blocks randomly on a surface.  
Pic: https://i.imgur.com/hMD29oO.png  
Example: /br splatter stone,dirt 30 15  
Note: The seeds define how many splotches there are, recursion defines how large, solid defines whether the pattern is applied per seed, else per block.

#### /brush cliff [radius=5] [file|#clipboard|imgur=null] [rotation=0] [yscale=1.00] [-h]

*Perm*: `worldedit.brush.height`   
*Desc*: This brush flattens terrain and creates cliffs.  
- The `-r` flag enables random off-axis rotation  
- The `-l` flag will work on snow layers  
- The `-s` flag disables smoothing

#### /brush smooth [size=2] [iterations=4] [-n]

*Perm*: `worldedit.brush.smooth`   
*Desc*: Chooses the terrain softener brush.  
The -n flag makes it only consider naturally occurring blocks.

#### /brush scatter \<pattern> [radius=5] [points=5] [distance=1] [-o]

*Perm*: `worldedit.brush.scatter`   
*Desc*: Set a number of blocks randomly on a surface each a certain distance apart.  
The -o flag will overlay the block  
Video: https://youtu.be/RPZIaTbqoZw?t=34s

---

### */Masks*

Masks determine if a block can be placed

* Use [brackets] for arguments
* Use , to OR multiple
* Use & to AND multiple  
e.g. >[stone,dirt],#light[0][5],$jungle

---

### #offset \<dx> \<dy> \<dz>\ <mask>

*Desc*: Offset a mask

#### % \<chance>

*Desc*: percentage chance

### #id

*Desc*: Restrict to initial id

### #existing

*Desc*: If there is a non-air block

### #data

*Desc*: Restrict to initial data

### { \<min> \<max>

*Desc*: Restricts blocks to within a specific radius range of the initial block

### #surface

*Desc*: Restrict to surfaces (any solid block touching air)

### = \<expression>

*Desc*: expression mask

### ! \<mask>

*Desc*: Negate another mask

### $ \<biome>

*Desc*: in a specific biome. For a list of biomes use //biomelist

### #region

*Desc*: inside the provided selection

### ~ \<mask> [min=1] [max=8]

*Desc*: Adjacent to a specific number of other blocks

### \ \<min> \<max>

*Desc*: Restrict to specific terrain angle  
The -o flag will only overlayExample: /[0d][45d]  
Explanation: Allows any block where the adjacent block is between 0 and 45 degrees.  
Example: /[3][20]  
Explanation: Allows any block where the adjacent block is between 3 and 20 blocks below

### #dregion

*Desc*: inside the player's selection

### #xaxis

*Desc*: Restrict to initial x axis

### #skylight \<min> \<max>

*Desc*: Restrict to specific sky light levels

### #blocklight \<min> \<max>

*Desc*: Restrict to specific block light levels

### #opacity \<min> \<max>

*Desc*: Restrict to specific opacity levels

### #haslight

*Desc*: Restricts to blocks with light (sky or emitted)

### #brightness \<min> \<max>

*Desc*: Restrict to specific block brightness

### #liquid

*Desc*: If there is a solid block

#### true

*Desc*: Always true

### #nolight

*Desc*: Restrict to blocks without light (sky or emitted)

#### false

*Desc*: Always false

### #iddata

*Desc*: Restrict to initial block id and data

### > \<mask>

*Desc*: above a specific block

### | \<mask> \<min> \<max>

*Desc*: sides with a specific number of other blocks

### #wall

*Desc*: Restrict to walls (any block n,e,s,w of air)

### #zaxis

*Desc*: Restrict to initial z-axis

### #yaxis

*Desc*: Restrict to initial y-axis

### < \<mask>

*Desc*: below a specific block

### #simplex \<scale=10> \<min=0> \<max=100>

*Desc*: Use simplex noise as the mask

### #light \<min> \<max>

*Desc*: Restrict to specific light levels

### #solid

*Desc*: If there is a solid block

Also see: https://worldedit.enginehub.org/en/latest/usage/general/masks/#available-masks

---

### */Patterns*

Patterns determine what blocks are placed

* Use [brackets] for arguments
* Use , to OR multiple
e.g. #surfacespread[10][#existing],andesite

---

### #offset \<dx> \<dy> \<dz> \<pattern>

*Desc*: Offset a pattern

### #mask \<mask> \<pattern-true> \<pattern-false>

*Desc*: Apply a pattern depending on a mask

### #spread \<dx> \<dy> \<dz> \<pattern>

*Desc*: Randomly spread blocks

### #buffer \<pattern>

*Desc*: Only place a block once while a pattern is in use  
Use with a brush when you don't want to apply to the same spot twice

### #color \<r> \<g> \<b>

*Desc*: Use the block closest to a specific color

### #clipboard

*Desc*: Use the blocks in your clipboard as the pattern

### #existing

*Desc*: Use the block that is already there

### #biome \<biome>

*Desc*: Set the biome

### = \<expression>

*Desc*: Expression pattern

### #relative <pattern>

*Desc*: Offset the pattern to where you click

### #saturate \<r> \<g> \<b> \<a> 

*Desc*: Saturate the existing block with a color

### #darken

*Desc*: Darken the existing block

### #anglecolor \<distance>

*Desc*: A darker block based on the existing terrain angle

### #desaturate \<percent>

*Desc*: Desaturated color of the existing block

### #averagecolor \<r> \<g> \<b> \<a>

*Desc*: Average between the existing block and a color

### #fullcopy [schem|folder|url=#copy] [rotate=false] [flip=false]

*Desc*: Places your full clipboard at each block

### #buffer2d \<pattern>

*Desc*: Only place a block once in a column while a pattern is in use

### #lighten

*Desc*: Lighten the existing block

### #!x \<pattern>

*Desc*: The pattern will not be provided the z axis info.  
Example: #!x[#!z[#~[#l3d[pattern]]]]

### #surfacespread \<distance> \<pattern>

*Desc*: Applies to only blocks on a surface. Selects a block from provided pattern with a given randomized offset [0, +++<distance>+++). e.g. Use `#existing` to randomly offset blocks in the world, or `#copy` to offset blocks in your clipboard

### #solidspread \<dx> \<dy> \<dz> \<pattern>

*Desc*: Randomly spread solid blocks

### #linear2d \<pattern> [xscale=1] [zscale=1]

*Desc*: Use the x,z coordinate to pick a block from the list

### #!y \<pattern>

*Desc*: The pattern will not be provided the y axis info

### #linear3d \<pattern> [xscale=1] [yscale=1] [zscale=1]

*Desc*: Use the x,y,z coordinate to pick a block from the list

### #linear \<pattern>

*Desc*: Sequentially set blocks from a list of patterns

### #!z \<pattern>

*Desc*: The pattern will not be provided the z axis info

### #simplex \<scale=10> \<pattern>

*Desc*: Use simplex noise to randomize blocks

Also see: https://worldedit.enginehub.org/en/latest/usage/general/patterns/#available-patterns

---

### */Transforms*

* Use [brackets] for arguments
* Use , to OR multiple
* Use & to AND multiple

---

### #offset \<dx> \<dy> \<dz> [transform]

*Desc*: Offset transform

### #rotate \<rotateX> \<rotateY> \<rotateZ> [transform]

*Desc*: All changes will be rotated around the initial position

### #scale \<dx> \<dy> \<dz> [transform]

*Desc*: All changes will be scaled

### #pattern \<pattern> [transform]

*Desc*: Always use a specific pattern

### #linear3d \<transform>

*Desc*: Use the x,y,z coordinate to pick a transform from the list

### #linear \<transform>

*Desc*: Sequentially pick from a list of transform

### #spread \<dx> \<dy> \<dz> [transform]

*Desc*: Random offset transform

---

### *Create From Image (Currently not implemented)*

____
Create a world from images
____

---

#### /cfi update

*Perm*: `worldedit.anvil.cfi`  +
*Desc*: Resend the CFI chunks

#### /cfi mask \<imageMask|mask>

*Perm*: `worldedit.anvil.cfi`  +
*Desc*: Select a mask

#### /cfi pattern \<pattern>

*Perm*: `worldedit.anvil.cfi`  +
*Desc*: Select a pattern

#### /cfi color \<url> [imageMask|mask]

*Perm*: `worldedit.anvil.cfi`  +
*Desc*: Color the terrain using only blocks +
Provide an image, or worldedit mask for the 2nd argument to restrict what areas are colored  
The -w (disableWhiteOnly) will randomly apply depending on the pixel luminance

#### /cfi image \<image>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Select an image

#### /cfi snow [image|mask]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Create some snow

#### /cfi height \<height|image>

*Perm*: `worldedit.anvil.cfi`    
*Desc*: Set the terrain height either based on an image heightmap, or a numeric value.

#### /cfi cancel

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Cancel creation

#### /cfi biome \<biome> [image|mask]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Set the biome in specific parts of the map.  
- If an image is used, the biome will have a chance to be set based on how white the pixel is (white #FFF = 100% chance) - The whiteOnly parameter determines if only white values on the image are set - If a mask is used, the biome will be set anywhere the mask applies

#### /cfi overlay \<pattern> [url|mask]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Change the block directly above the floor (default: air)  
e.g. Tallgrass

#### /cfi caves

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Generate vanilla caves

#### /cfi ore \<mask=stone> \<pattern> \<size> \<frequency> \<rarity> \<minY> \<maxY>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Use a specific pattern and settings to generate ore

#### /cfi ores \<mask=stone>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Generate the vanilla ores

#### /cfi download

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Download the current image

#### /cfi schem [url] \<mask> \<file|folder|url> \<rarity> \<distance> \<rotate=true>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Populate a schematic on the terrain  
- Change the mask (e.g. angle mask) to only place the schematic in specific locations.  
- The rarity is a value between 0 and 100.  
- The distance is the spacing between each schematic

#### /cfi brush

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Info about using brushes with CFI

#### /cfi randomization <true|false>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: This is enabled by default, randomization will add some random variation in the blocks used to closer match the provided image.  
If disabled, the closest block to the color will always be used.  
Randomization will allow mixing biomes when coloring with biomes

#### /cfi done

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Create the world

#### /cfi column \<pattern> [url|mask]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Set the floor and main block

#### /cfi biomepriority [percent=50]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Increase or decrease biome priority when using blockBiomeColor.  
A value of 50 is the default  
Above 50 will prefer to color with biomes  
Below 50 will prefer to color with blocks

#### /cfi floor \<pattern> [url|mask]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Set the floor (default: grass)

#### /cfi main \<pattern> [url|mask]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Set the main block (default: stone)

#### /cfi smooth \<radius> \<iterations> [image|mask]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Smooth terrain within an image-mask, or worldedit mask  
- You can use !0 as the mask to smooth everything  
- This supports smoothing snow layers (set the floor to 78:7)  
- A good value for radius and iterations would be 1 8.

#### /cfi complexity \<minPercent> \<maxPercent>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Set the complexity for coloring  
Filter out blocks to use based on their complexity, which is a measurement of how much color variation there is in the texture for that block.  
Glazed terracotta is complex, and not very pleasant for terrain, whereas stone and wool are simpler textures.  
Using 0 73 for the min/max would use the simplest 73% of blocks for coloring, and is a reasonable value.

#### /cfi paletteblocks \<blocks|#clipboard|*>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Allow only specific blocks to be used for coloring  
`blocks` is a list of blocks e.g. stone,bedrock,wool  
`#clipboard` will only use the blocks present in your clipboard.

#### /cfi biomecolor \<url> [imageMask|mask]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Color the terrain using biomes.  
Note: Biome coloring does not change blocks:  
- If you changed the block to something other than grass you will not see anything.

#### /cfi floorthickness \<height>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Set the thickness of the top layer  
- A value of 0 is the default and will only set the top block

#### /cfi water \<block>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Change the block used for water  
e.g. Lava

#### /cfi tp

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Teleport to the CFI virtual world

#### /cfi waterheight \<height>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Set the level water is generated at  
Set the level water is generated at  
- By default water is disabled (with a value of 0)

#### /cfi glass \<url>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Color terrain using glass

#### /cfi populate

*Perm*: `worldedit.anvil.cfi`   
*Desc*:

#### /cfi blockbiomecolor \<url> [imageMask|mask]

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Color the terrain using blocks and biomes.  
Provide an image, or worldedit mask to restrict what areas are colored  
The -w (disableWhiteOnly) will randomly apply depending on the pixel luminance

#### /cfi coloring

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Color the world using an image

#### /cfi baseid \<block>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Change the block used for the base  
e.g. Bedrock

#### /cfi worldthickness \<height>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Set the thickness of the generated world  
- A value of 0 is the default and will not modify the height

#### /cfi component

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Components menu

#### /cfi empty \<width> \<length>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Start CFI with an empty map as a base

#### /cfi heightmap \<url>

*Perm*: `worldedit.anvil.cfi`   
*Desc*: Start CFI with a height map as a base

---