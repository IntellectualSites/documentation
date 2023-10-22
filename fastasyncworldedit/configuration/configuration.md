# Configuration

Table of Contents

[🏠 Return to the index](../README.md)

- [Introduction](#introduction)
- [Asynchronous Operation](#asynchronous-operation)
- [Limits Settings](#limits-settings)
- [Queue Settings](#queue-settings)
- [Local Queues](#local-queues)
- [Global Queues](#global-queues)
- [Efficiency Improvements](#efficiency-improvements)
- [Default Configuration File](#default-configuration-file)

## Introduction

FAWE works well out of the box, but configuration settings in the Limits and Queue Operation sections may be used to fine tune FAWE for your server operation. Refer to the following discussions as well as the comments in the Default Configuration file shown below.

If you make setting changes and encounter problems with edit operations, return to the default setting values before additional finetuning attempts.  To reset the config.yml file, delete it and restart the server or reload FAWE using the `/fawe` command.

## Asynchronous Operation

WorldEdit by itself tries to finish each edit operation completely in memory before placing any blocks. WorldEdit also stores undo (history) blocks in memory, which increases memory requirements and with large edits, can cause the server to run out of memory and crash, or cause the edit to fail.

FAWE provides most of its speed improvements by running each edit operation in a separate asynchronous thread.  And it starts placing blocks in the world as soon as they are available rather than waiting for the operation to complete.  This lets the overall edit finish much faster. Also, since blocks are placed when available, they don't fill up memory.

FAWE may also be configured to store Undo (History) blocks on disk, which when used with the other improvements, enables FAWE to make unlimited sized edits with minimal impact.

## Limits Settings

These settings enable you to control the maximum WorldEdit block edit sizes for various groups of users. The "`default`" section applies to non--admin users who do not have limit bypass enabled. See *fawe.bypass* and *fawe.admin* permissions for more info.

You can also define limits for specific groups and enable them using a permission node. See comments in the default config file listing below.

## Queue Settings

Settings in this section enable you to fine tune the asynchronous queue operation to affect memory use and editing speed.

## Local Queues

FAWE runs each Edit command in a separate asynchronous thread from the main server thread, and queues blocks processed by the edit to a per player local queue.

Inside the queue, the blocks are ordered by chunks, which enables FAWE to use more efficient chunk optimized algorithms to finally place (dispatch) the blocks into the world. For example, WorldEdit used by itself, performs lighting, and physics, and sends packets, for each block being changed.  FAWE on the other hand, using its queue of blocks grouped by chunks, can use more efficient chunk algorithms to place the blocks in the world.

Local queues begin in the incomplete state when an edit starts. When simple //set or //copy type commands queue blocks, the blocks are ready to be placed.  When other commands (e.g. //smooth and //deform) edit blocks, the blocks changed depend on the position of other blocks in the world, and related blocks may be changed multiple times. (Typically, all localized changes are complete within 64 chunks worth of block changes.)

When the edit has finished, the local queue changes to the Complete state.

## Global Queues

FAWE uses a global queue to actually place blocks from all active local queue edits.  The global queue prioritizes on insertion order, so older local queues have their blocks placed first. Blocks on the global queue are placed in the world on the main server thread.

FAWE always places blocks from the Completed local queues first *AND* the list of completed local queues MUST be empty before blocks are placed from incomplete local queues.

The global queue links to local queues for edits in progress.  (Internally this is implemented as two queues -- one for the local queues that are completed, the other for local queues that are incomplete.)

## Efficiency Improvements

FAWE also tries to improve efficiency by placing blocks from Incomplete queues when there are no completed queues ready.

- *target-size*

FAWE uses *target-size* to regulate placing blocks from incomplete queues and to ensure that there is a reasonable likelihood that the blocks to be placed are stable and not likely to be changed again.

Some commands such as //smooth and //deform may not smooth or deform properly if they are dispatched while the command is still processing (though these usually don't modify anywhere near 64 chunks).  The blocks changed depend on the position of other blocks in the world, and related blocks may be changed multiple times.  In this case, the likelihood that any block will be re--modified falls off after around 64 chunks worth of blocks have been queued. This is not an issue with simple operations like //copy and //set, since those blocks are not changed multiple times.

The global queue will start processing available blocks from still in--process edits if there are no completed local queues waiting to be placed AND there are target--size or more in--process edit chunks queued.

This setting ensures that blocks from commands like //smooth and //deform are stable, and it also contributes to making sure that the global queue keeps placing available blocks rather than staying idle.

The default *target-size* value is 64.

Without *target-size*, running a huge edit with `/fastmode` would normally cause the incomplete queue to fill up faster than the *max-wait-ms* setting could empty it.

Reducing *target--size* may reduce performance for operations like //smooth and //deform, since time may be wasted re--changing blocks that have already been placed.  Also, since these commands depend on the position of other blocks, if the *target--size* is not large enough and blocks from incomplete queues are placed but may be changed later, the final result of blocks placed might be different from if the processing completed before any changes are placed. This would result in the commands not performing properly.   So having a large enough *target-size* will avoid this problem.

Increasing *target-size* is not helpful since most related changes occur in less than 64 chunks processing time. ALSO if set exceptionally large, it would reduce FAWE's ability to recover from exceptionally large edits that would potentially run the server out of memory.

- *max-wait-ms*

FAWE is most efficient when placing blocks from edits that have finished processing.  However, waiting till completion wastes time and fills memory, therefore, this setting is used to try to keep dispatching blocks from the global queue rather than letting it sit idle while edits haven't finished but blocks are available to place.

The global queue will start placing blocks from still-processing edits if there are no blocks from completed local queues waiting to be placed AND the global queue remains idle for *max--wait--ms* milliseconds or more.

The *max--wait--ms* setting also serves as a time--out for chunk load problems.  Chunks normally load in much less than a second, so the default *max--wait--ms* value of 1000 ms avoids having edits freeze on chunk load errors.

Increase it if chunks fail to load in time.

## Default Configuration File

The default configuration file is shown below, located in `/plugins/FastAsyncWorldEdit/config.yml`

```yaml
# These first 6 aren't configurable
issues: "https://github.com/IntellectualSites/FastAsyncWorldEdit/issues"
wiki: "https://github.com/IntellectualSites/FastAsyncWorldEdit-Documentation/wiki"
date: "Sun Feb 27 00:00:00 CET 2022"
build: "https://ci.athion.net/job/FastAsyncWorldEdit/78"
commit: "https://github.com/IntellectualSites/FastAsyncWorldEdit/commit/fd8d6df1"
platform: "Bukkit"
# Set true to enable WorldEdit restrictions per region (e.g. PlotSquared or WorldGuard).
# To be allowed to WorldEdit in a region, users need the appropriate
# fawe.<plugin>  permission. See the Permissions page for supported region plugins.
region-restrictions: true
# FAWE will cancel non admin edits when memory consumption exceeds this %
#  - Bypass with `/wea` or `//fast` or `fawe.bypass`
#  - Disable with 100 or -1.
max-memory-percent: 95

# Enable or disable core components
enabled-components:
  commands: true
  # Show additional information in console. It helps us at IntellectualSites to find out more about an issue.
  # Leave it off if you don't need it, it can spam your console.
  debug: false
  # Whether or not FAWE should notify you on startup about new versions available.
  update-notifications: true

clipboard:
  # Store the clipboard on disk instead of memory
  #  - Will be slightly slower
  #  - Uses 2 bytes per block
  use-disk: true
  # Compress the clipboard to reduce the size:
  #  - TODO: Buffered random access with compression is not implemented on disk yet
  #  - 0 = No compression
  #  - 1 = Fast compression
  #  - 2-17 = Slower compression
  #  - levels over 6 require ZSTD 1.4.8+ to be installed to the system
  compression-level: 1
  # Number of days to keep history on disk before deleting it
  delete-after-days: 1
  # If a player's clipboard should be deleted upon logout
  delete-on-logout: false

lighting:
  # If packet sending should be delayed until relight is finished
  delay-packet-sending: true
  async: true
  # The relighting mode to use:
  #  - 0 = None (Do no relighting)
  #  - 1 = Optimal (Relight changed light sources and changed blocks)
  #  - 2 = All (Slowly relight every blocks)
  mode: 1
  # If existing lighting should be removed before relighting
  remove-first: true

# Generic tick limiter (not necessarily WorldEdit related, but useful to stop abuse)
tick-limiter:
  # Enable the limiter
  enabled: true
  # The interval in ticks
  interval: 20
  # Max falling blocks per interval (per chunk)
  falling: 64
  # Max physics per interval (excluding redstone)
  physics-ms: 10
  # Max item spawns per interval (per chunk)
  items: 256
  # Whether fireworks can load chunks
  #  - Fireworks usually travel vertically so do not load any chunks
  #  - Horizontal fireworks can be hacked in to crash a server
  fireworks-load-chunks: false

web:
  # The web interface for clipboards
  #  - All schematics are anonymous and private
  #  - Downloads can be deleted by the user
  #  - Supports clipboard uploads, downloads and saves
  url: "https://schem.intellectualsites.com/fawe/"

extent:
  # Don't bug console when these plugins slow down WorldEdit operations
  #  - You'll see a message in console or ingame if you need to change this option
  allowed-plugins:
  - "com.example.ExamplePlugin"
  # Should debug messages be sent when third party extents are used?
  debug: true

# Experimental options, use at your own risk
#  - UNSAFE = Can cause permanent damage to the server
#  - SAFE = Can be buggy but unlikely to cause any damage
experimental:
  # [UNSAFE] Directly modify the region files. (OBSOLETE - USE ANVIL COMMANDS)
  #  - IMPROPER USE CAN CAUSE WORLD CORRUPTION!
  anvil-queue-mode: false
  # [SAFE] Dynamically increase the number of chunks rendered
  #  - Requires Paper
  #  - Set your server view distance to 1 (spigot.yml, server.properties)
  #  - Based on tps and player movement
  #  - Note: If entities become hidden, increase the server view distance to 3
  dynamic-chunk-rendering: -1
  # Allows brushes to be persistent (default: true)
  persistent-brushes: true
  # [SAFE] Keep entities that are positioned in non-air blocks when editing an area
  # Might cause client-side FPS lag in some situations
  keep-entities-in-blocks: false
  # Other experimental features
  other: false
  # Allow blocks placed by WorldEdit to tick. This could cause the big lags.
  # This has no effect on existing blocks one way or the other.
  allow-tick-placed: false
  # Force re-ticking of existing blocks not edited by FAWE.
  # This will increase time taken slightly.
  allow-tick-existing: true
  # Sets a maximum limit (in kb) for the size of a player's schematics directory (per-player mode only)
  # Set to -1 to disable
  per-player-file-size-limit: -1
  # Sets a maximum limit for the amount of schematics in a player's schematics directory (per-player mode only)
  # Set to -1 to disable
  per-player-file-num-limit: -1

# This relates to how FAWE places chunks
queue:
  progress:
    # Display constant titles about the progress of a user's edit
    #  - false = disabled
    #  - title = Display progress titles
    #  - chat = Display progress in chat
    display: "false"
    # How often edit progress is displayed
    interval: 1
    # Delay sending progress in milliseconds (so quick edits don't spam)
    delay: 5000
  # This should equal the number of processors you have
  parallel-threads: 16
  # When doing edits that effect more than this many chunks:
  #  - FAWE will start placing before all calculations are finished
  #  - A larger value will use slightly less CPU time
  #  - A smaller value will reduce memory usage
  #  - A value too small may break some operations (deform?)
  #  - Values smaller than the configurated parallel threads are not accepted
  target-size: 64
  # Force FAWE to start placing chunks regardless of whether an edit is finished processing
  #  - A larger value will use slightly less CPU time
  #  - A smaller value will reduce memory usage
  #  - A value too small may break some operations (deform?)
  max-wait-ms: 1000
  # Increase or decrease queue intensity (ms) [-50,50]:
  #     0 = balance of performance / stability
  #     -10 = Allocate 10ms less for chunk placement
  # Too high can cause lag spikes (you might be okay with this)
  # Too low will result in slow edits
  extra-time-ms: 0
  # Loading the right amount of chunks beforehand can speed up operations
  #  - Low values may result in FAWE waiting on requests to the main thread
  #  - Higher values use more memory and isn't noticeably faster
  #  - A good (relatively) safe way to set this is
  #  - Use 128 x GB of RAM / number of players expected to be using WE at the same time
  #  - Paper and derivatives only. (requires delay-chunk-unloads-by to be set).
  preload-chunk-count: 512
  # If pooling is enabled (reduces GC, higher memory usage)
  #  - Enable to improve performance at the expense of memory
  pool: true
  # Discard edits which have been idle for a certain amount of time (ms)
  #  - E.g. A plugin creates an EditSession but never does anything with it
  #  - This only applies to plugins improperly using WorldEdit's legacy API
  discard-after-ms: 60000
  # When using fastmode also do not bother to fix existing ticking blocks
  no-tick-fastmode: true

history:
  # Should history be saved on disk:
  #  - Frees up a lot of memory
  #  - Persists restarts
  #  - Unlimited undo
  #  - Does not affect edit performance if `combine-stages`
  use-disk: true
  # Use a database to store disk storage summaries:
  #  - Enables inspection and rollback
  #  - Does not impact performance
  use-database: true
  # Record history with dispatching:
  #  - Much faster as it avoids duplicate block checks
  #  - Slightly worse compression since dispatch order is different
  combine-stages: true
  # Do not wait for a chunk's history to save before sending it
  #  - Undo/redo commands will wait until the history has been written to disk before executing
  #  - Requires combine-stages = true
  send-before-history: true
  # Higher compression reduces the size of history at the expense of CPU
  # 0 = Uncompressed byte array (fastest)
  # 1 = 1 pass fast compressor (default)
  # 2 = 2 x fast
  # 3 = 3 x fast
  # 4 = 1 x medium, 1 x fast
  # 5 = 1 x medium, 2 x fast
  # 6 = 1 x medium, 3 x fast
  # 7 = 1 x high, 1 x medium, 1 x fast
  # 8 = 1 x high, 1 x medium, 2 x fast
  # 9 = 1 x high, 1 x medium, 3 x fast (best compression)
  # NOTE: If using disk, do some compression (3+) as smaller files save faster
  #  - levels over 6 require ZSTD 1.4.8+ to be installed to the system
  compression-level: 3
  # The buffer size for compression:
  #  - Larger = better ratio but uses more upfront memory
  #  - Must be in the range [64, 33554432]
  buffer-size: 531441
  # The maximum time in milliseconds to wait for a chunk to load for an edit.
  #  (50ms = 1 server tick, 0 = Fastest).
  #  The default value of 100 should be safe for most cases.
  #
  # Actions which require loaded chunks (e.g. copy) which do not load in time
  #  will use the last chunk as filler, which may appear as bands of duplicated blocks.
  # Actions usually wait about 25-50ms for the chunk to load, more if the server is lagging.
  # A value of 100ms does not force it to wait 100ms if the chunk loads in 10ms.
  #
  # This value is a timeout in case a chunk is never going to load (for whatever odd reason).
  # If the action times out, the operation continues by using the previous chunk as filler,
  #  and displaying an error message.  In this case, either copy a smaller section,
  #  or increase chunk-wait-ms.
  # A value of 0 is faster simply because it doesn't bother loading the chunks or waiting.
  chunk-wait-ms: 1000
  # Delete history on disk after a number of days
  delete-after-days: 7
  # Delete history in memory on logout (does not effect disk)
  delete-on-logout: true
  # If history should be enabled by default for plugins using WorldEdit:
  #  - It is faster to have disabled
  #  - Use of the FAWE API will not be effected
  enable-for-console: true
  # Should redo information be stored:
  #  - History is about 20% larger
  #  - Enables use of /redo
  store-redo: true
  # Assumes all edits are smaller than 4096x256x4096:
  #  - Reduces history size by ~10%
  small-edits: false

# Paths for various directories
paths:
  # Put any minecraft or mod jars for FAWE to be aware of block textures
  textures: "textures"
  heightmap: "heightmap"
  history: "history"
  # Multiple servers can use the same clipboards
  #  - Use a shared directory or NFS/Samba
  clipboard: "clipboard"
  # Each player has his or her own sub directory for schematics
  per-player-schematics: false

# Region restriction settings
region-restrictions-options:
  # What type of users are allowed to WorldEdit in a region
  #  - MEMBER = Players added to a region
  #  - OWNER = Players who own the region
  mode: "MEMBER"
  # Allow region blacklists.
  #  - Currently only implemented for WorldGuard
  #  - see region-restrictions-options.worldguard-region-blacklist
  allow-blacklists: false
  # List of plugin mask managers that should be exclusive. Exclusive managers are not
  # checked for edit restrictions if another manager already allowed an edit, and further
  # managers are not checked if an exclusive manager allows an edit.
  #  - May be useful to add PlotSquared if using both P2 and WorldGuard on a server
  #  - Some custom-implementations in other plugins may override this setting
  exclusive-managers:
  - "ExamplePlugin"
  # If a worldguard-protected world should be considered as a region blacklist.
  #  - This will create a blacklist of regions where an edit cannot operate.
  #  - Useful for a "freebuild" worlds with few protected areas.
  #  - May cause performance loss with large numbers of protected areas.
  #  - Requires region-restrictions-options.allow-blacklists be true.
  #  - Will still search for current allowed regions to limit the edit to.
  #  - Any blacklist regions are likely to override any internal allowed regions.
  worldguard-region-blacklist: false
# The "default" limit group affects those without a specific limit permission.
# To grant someone different limits, copy the default limits group
# and give it a different name (e.g. newbie). Then give the user the limit
# permission node with that limit name (e.g. fawe.limit.newbie  )
limits:
  default:
    # Max actions that can be run concurrently (i.e. commands)
    max-actions: 1
    # Max number of block changes (e.g. by `//set stone`).
    max-changes: 50000000
    # Max number of blocks checked (e.g. `//count stone` which doesn't change blocks)
    max-checks: 50000000
    # Number of times a change can fail (e.g. if the player can't access that region)
    max-fails: 50000000
    # Allowed brush iterations (e.g. `//brush smooth`)
    max-iterations: 1000
    # Max allowed entities (e.g. cows)
    max-entities: 1337
    # Blockstates include Banner, Beacon, BrewingStand, Chest, CommandBlock,
    # CreatureSpawner, Dispenser, Dropper, EndGateway, Furnace, Hopper, Jukebox,
    # NoteBlock, Sign, Skull, Structure
    max-blockstates: 1337
    # Maximum size of the player's history in Megabytes:
    #  - History on disk or memory will be deleted
    max-history-mb: -1
    # Maximum time in milliseconds //calc can execute
    max-expression-ms: 50
    # Cinematic block placement:
    #  - Adds a delay to block placement (nanoseconds/block)
    #  - Having an artificial delay will use more CPU/Memory
    speed-reduction: 0
    # Place chunks instead of individual blocks:
    #  - Disabling this will negatively impact performance
    #  - Only disable this for compatibility or cinematic placement
    fast-placement: true
    # Should WorldEdit use inventory?
    # 0 = No inventory usage (creative)
    # 1 = Inventory for removing and placing (freebuild)
    # 2 = Inventory for placing (survival)
    inventory-mode: 0
    # Should large edits require confirmation (>16384 chunks)
    confirm-large: true
    # If undo and redo commands should be restricted to allowed regions
    #  - Prevents scenarios where players can delete/reset a region, and then continue to undo/redo on it
    restrict-history-to-regions: true
    # List of nbt tags to strip from blocks, e.g. Items
    strip-nbt: []
    # If the disallowed blocks listed in worldedit-config.yml should be disallowed in all edits,
    # not just where blocks patterns are used.
    #  - Can prevent blocks being pasted from clipboards, etc.
    #  - If fast-placement is disabled, this may cause edits to be slower.
    universal-disallowed-blocks: true
    # List of blocks to deny use of. Can be either an entire block type or a block with a specific property value.
    # Where block properties are specified, any blockstate with the property will be disallowed (i.g. all directions
    # of a waterlogged fence). For blocking/remapping of all occurence of a property like waterlogged, see
    # remap-properties below.
    # Example block property blocking:
    #  - "minecraft:conduit[waterlogged=true]"
    #  - "minecraft:piston[extended=false,facing=west]"
    #  - "minecraft:wheat[age=7]"
    disallowed-blocks:
    - "minecraft:wheat"
    - "minecraft:fire"
    - "minecraft:redstone_wire"
    # List of block properties that should be remapped if used in an edit. Entries should take the form
    # "property_name[value1_old:value1_new,value2_old:value2_new]". For example:
    #  - "waterlogged[true:false]"
    #  - "age[7:4,6:4,5:4]"
    #  - "extended[true:false]"
    remap-properties: []
```
