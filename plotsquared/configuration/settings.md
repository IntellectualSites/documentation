# General Settings

## Introduction

This is the main settings file for PlotSquared.

*Located in:* `/plugins/PlotSquared/config/settings.yml`

## Default

```yaml
# This value is not configurable. It shows the platform you are using.
platform: "Bukkit"
# Show additional information in console. It helps us at IntellectualSites to find out more about an issue.
# Leave it off if you don't need it, it can spam your console.
debug: true

# Redstone related settings
redstone:
  # Disable redstone in unoccupied plots
  disable-unoccupied: false
  # Disable redstone when all owners/trusted/members are offline
  disable-offline: false
  # Detect and cancel invalid pistons on the edge of plots (e.g. placed with WorldEdit)
  detect-invalid-edge-pistons: false

# UUID settings
# DO NOT EDIT them unless you know what you are doing.
uuid:
  # Force using offline UUIDs (it usually detects the right mode)
  offline: false
  # Force using lowercase UUIDs
  force-lowercase: false
  # How many UUIDs that may be stored in the cache
  uuid-cache-size: 100000
  # Rate limit (per 10 minutes) for background UUID fetching from the Mojang API
  background-limit: 200
  # Whether the Mojang API service is enabled for impromptu api calls. If false only the Background task will use http requests to fill the UUID cache (requires restart)
  impromptu-service-mojang-api: true
  # Rate limit (per 10 minutes) for random UUID fetching from the Mojang API
  impromptu-limit: 300
  # Timeout (in milliseconds) for non-blocking UUID requests (mostly commands)
  non-blocking-timeout: 3000
  # Timeout (in milliseconds) for blocking UUID requests (events)
  blocking-timeout: 10
  # Whether or not PlotSquared should read from the legacy database
  legacy-database-support: true
  # Whether or not PlotSquared should return Unknown if it fails to fulfill a request
  unknown-as-default: true
  # Whether or not automatic background caching should be enabled. It is HIGHLY recommended to keep this turned on. This should only be disabled if the server has a very large number of plots (>100k)
  background-caching-enabled: true
  # Whether the PaperMC service is enabled
  service-paper: true
  # Whether the LuckPerms service is enabled
  service-luckperms: true
  # Whether the Bukkit service is enabled
  service-bukkit: true
  # Whether the EssentialsX service is enabled
  service-essentialsx: true

# Enable or disable parts of the plugin
# Note: A cache will use some memory if enabled
enabled-components:
  # The database stores all the plots
  database: true
  # Events are needed to track a lot of things
  events: true
  # Commands are used to interact with the plugin
  commands: true
  # Whether we should notify you about updates or not.
  update-notifications: true
  # Stores user metadata in a database
  persistent-meta: true
  # Getting a rating won't need the database
  rating-cache: true
  # Allow WorldEdit to be restricted to plots
  worldedit-restrictions: true
  # Allow economy to be used to sell, claim or buy plots.
  economy: false
  # Expiry will clear old or simplistic plots
  plot-expiry: false
  # Processes chunks (trimming, or entity/tile limits) 
  chunk-processor: false
  # Kill mobs on roads (Chicken, Cow, etc.)
  kill-road-mobs: false
  # Also kill any road mobs that are being ridden, or are leashed
  kill-owned-road-mobs: false
  # Also kill any road mobs that are named
  kill-named-road-mobs: false
  # Kill items on roads (Stick, Paper, etc.)
  kill-road-items: false
  # Kill vehicles on roads (Boat, Minecart, etc.)
  kill-road-vehicles: false
  # Notify a player of any missed plot comments upon plot entry
  comment-notifier: true
  # Let players claim entire worlds with PlotSquared
  worlds: false
  # Actively purge invalid database entries
  database-purger: false
  # Delete plots when a player is banned.
  # Note: This only works with the /minecraft:ban command. Any punishment plugin is not supported.
  ban-deleter: false
  # Allows PlaceholderAPI placeholders to be used in captions, flags, etc.
  external-placeholders: true
  # Make road regeneration persistent across restarts
  persistent-road-regen: true
  # Enable the `/plot component` preset GUI
  # Read more about components here: https://intellectualsites.gitbook.io/plotsquared/customization/plot-components
  component-presets: true
  # Enable per user locale
  per-user-locale: false
  # The default locale. Before changing the language, make sure you downloaded the appropriate file and put it in the 'lang' folder.
  # You can find additional translations here: https://intellectualsites.crowdin.com/plotsquared
  default-locale: "en"
  # Use UUID cache to complete usernames
  extended-username-completion: true
  # Command aliases that will be tab completed
  tab-completed-aliases:
    - "plot"
    - "plots"
    - "p"
    - "plotsquared"
    - "plot2"
    - "p2"
    - "ps"
    - "2"
    - "plotme"
    - "plotz"
    - "ap"
  # Whether PlotSquared should hook into MvDWPlaceholderAPI or not
  use-mvdwapi: true
  # Prevent cross plot beacon effects
  disable-beacon-effect-overflow: true

# This is an auto clearing task called `task1`
auto-clear:
  task1:
    threshold: -1
    required-plots: -1
    confirmation: true
    days: 90
    skip-account-age-days: -1
    # True, if a plot should be deleted if the plot owner is unknown to the server
    delete-if-owner-is-unknown: false
    worlds:
      - "*"
    # See: https://intellectualsites.gitbook.io/plotsquared/optimization/plot-analysis for a description of each value.
    calibration:
      variety: 0
      variety-sd: 0
      changes: 0
      changes-sd: 1
      faces: 0
      faces-sd: 0
      data-sd: 0
      air: 0
      air-sd: 0
      data: 0

# Miscellaneous settings
done:
  # Require a plot marked as done to download (/plot download)
  required-for-download: false
  # Only plots marked as done can be rated
  required-for-ratings: false
  # Restrict building when a plot is marked as done
  restrict-building: false
  # The limit being how many plots a player can claim
  counts-towards-limit: true

# Configure the paths that will be used
paths:
  schematics: "schematics"
  templates: "templates"

# Schematic interface related settings
web:
  # The web interface for schematics
  #  - All schematics are anonymous and private
  #  - Downloads can be deleted by the user
  #  - Supports plot uploads, downloads and saves
  url: "https://schem.intellectualsites.com/plots/"
  # Whether or not the legacy web interface will be used for /plot download and /plot save
  # Note that this will be removed in future versions. Updating to Arkitektonika is highly suggested
  legacy-webinterface: false

# Rating related settings
ratings:
  # Replace the rating system with a like system. Will add /plot like/dislike, and remove the rating command
  use-likes: false
  # Rating categories
  categories: []
  # The blocks to use for the rating GUI if categories are set above
  block-0: "brown_wool"
  block-1: "red_wool"
  block-2: "orange_wool"
  block-3: "yellow_wool"
  block-4: "lime_wool"
  block-5: "cyan_wool"
  block-6: "blue_wool"
  block-7: "purple_wool"
  block-8: "magenta_wool"

# Teleportation related settings
teleport:
  # Teleport to your plot on death
  on-death: false
  # Teleport to your plot on login
  on-login: false
  # Teleport to your plot on claim (/plot claim)
  on-claim: true
  # Teleport to your plot on auto (/plot auto)
  on-auto: true
  # Add a delay to all teleport commands (in seconds)
  # Assign `plots.teleport.delay.bypass` to bypass the cooldown
  delay: 0
  # Teleport outside of the plot before clearing
  on-clear: false
  # Teleport outside of the plot before deleting
  on-delete: false
  # The visit command is ordered by world instead of globally
  per-world-visit: false
  # Search merged plots for having multiple owners when using the visit command
  visit-merged-owners: true

# Chunk processor related settings
# See https://intellectualsites.gitbook.io/plotsquared/optimization/chunk-processor for more information.
chunk-processor:
  # Auto trim will not save chunks which aren't claimed
  auto-trim: false
  # Max tile entities per chunk
  max-tiles: 4096
  # Max entities per chunk
  max-entities: 512
  # Disable block physics
  disable-physics: false

# Claim related settings
claim:
  # The max plots claimed in a single `/plot auto <size>` command
  max-auto-area: 4

# Relating to how many plots someone can claim
limit:
  # Should the limit be global (over multiple worlds)
  global: false
  # The max range of permissions to check for, e.g. plots.plot.127
  # The value covers the permission range to check, you need to assign the permission to players/groups still
  # Modifying the value does NOT change the amount of plots players can claim
  max-plots: 127

# Settings related to plot titles
titles:
  # The big text that appears when you enter a plot.
  # For a single plot set `/plot flag set titles false` to disable it.
  # For just you run `/plot toggle titles` to disable it.
  # For all plots: Add `titles: false` in the worlds.yml flags block to disable it.
  display-titles: true
  # Plot titles fading in (duration in ticks)
  titles-fade-in: 10
  # Plot titles being shown (duration in ticks)
  titles-stay: 50
  # Plot titles fading out (duration in ticks)
  titles-fade-out: 20
  # Changes the notification method on plot entry from Title + SubTitle -> ActionBar.
  # The message still sent to the player is pulled from the lang key "titles.title_entered_plot".
  # If you would like to still show the owner of the plot, append the contents of "titles.title_entered_plot_sub" onto the former lang key.
  titles-as-actionbar: false
  # If the default title should be displayed on plots with server-plot flag set.
  # Titles will still be sent if the plot-title flag is set.
  display-default-on-server-plot: false

# Settings related to tab completion
tab-completions:
  # The time in seconds how long tab completions should remain in cache.
  # 0 will disable caching. Lower values may be less performant.
  cache-expiration: 15

# Settings relating to PlotSquared's GlobalBlockQueue
queue:
  # Average time per tick spent completing chunk tasks in ms.
  # Queue will adjust the batch size to match this.
  max-iteration-time: 30
  # Initial number of chunks to process by the queue. This can be increased or
  # decreased by the queue based on the actual iteration time compared to above.
  initial-batch-size: 5
  # Notify progress of the queue to the player or console.
  notify-progress: true
  # Interval in ms to notify player or console of progress.
  notify-interval: 5000
  # Time to wait in ms before beginning to notify player or console of progress.
  # Prevent needless notification of progress for short queues.
  notify-wait: 5000
  # How lighting should be handled by the queue. Modes:
  #   - 0 - Do not do any lighting (fastest)
  #   - 1 - Only execute lighting where blocks with light values are placed
  #   - 2 - Only execute lighting where blocks with light values are placed or removed/replaced
  #   - 3 - Always execute lighting (slowest)
  lighting-mode: 1
  # If blocks at the edges of queued operations should be set causing updates
  #  - Slightly slower, but prevents issues such as fences left connected to nothing
  update-edges: true

# Enable or disable parts of the plugin specific to using Paper
paper-components:
  # Enable Paper's listeners.
  paper-listeners: true
  # Prevent entities from leaving plots
  entity-pathing: true
  # Cancel entity spawns when the chunk is loaded if the PlotArea's mob spawning is off
  cancel-chunk-spawn: true
  # Use paper's PlayerLaunchProjectileEvent to cancel projectiles
  player-projectile: true
  # Cancel entity spawns from spawners before they happen (performance buff)
  spawner-spawn: true
  # Cancel entity spawns from tick spawn rates before they happen (performance buff)
  creature-spawn: true
  # Check the tile entity limit on block placement
  tile-entity-check: true
  # Use Paper's async tab completion
  async-tab-completion: false

# Enable or disable all of or parts of the FastAsyncWorldEdit-PlotSquared hook
fawe-components:
  # Use FastAsyncWorldEdit for queue handling.
  fawe-hook: true
  cuboids: true
  clear: true
  copy-and-swap: true
  set-biome: true

# Confirmation timeout related settings
confirmation:
  # Timeout before a confirmation prompt expires
  confirmation-timeout-seconds: 20

# Backup related settings
# See https://intellectualsites.gitbook.io/plotsquared/plot-backups for more information.
backup:
  # Automatically backup plots when destructive commands are performed, e.g. /plot clear
  automatic-backups: true
  # Maximum amount of backups associated with a plot
  backup-limit: 3
  # Whether or not backups should be deleted when the plot is unclaimed
  delete-on-unclaim: true

# Chat related settings
chat:
  # Should the plot chat be logged to console?
  log-plotchat-to-console: true
  # Whether an action bar message should be send over a chat message for notification purposes such for the 
  # notify-enter, notify-leave, greeting or farewell flag.
  notification-as-actionbar: false
  # The click event actions that should be removed from user input in e.g. plot flags like 'greeting'.
  # Actions like 'RUN_COMMAND' may be used maliciously as players could trick staff into clicking on messages
  # triggering destructive commands.
  click-event-actions-to-remove:
    - "OPEN_URL"
    - "OPEN_FILE"
    - "RUN_COMMAND"
    - "SUGGEST_COMMAND"
    - "CHANGE_PAGE"
    - "COPY_TO_CLIPBOARD"

# Used to format the plot creation date placeholder. Modifying the format does not affect the storage time.
timeformat:
  # The date used formatted in ISO 8601
  date-format: "yyyy-MM-dd HH:mm:ss z"
  # The time zone used
  time-zone: "GMT"

# Schematic web interface related settings
arkitektonika:
  # The url of the backend server (Arkitektonika)
  backend-url: "https://api.schematic.cloud/"
  # The url used to generate a download link from.
  # {key} will be replaced with the generated key
  download-url: "https://api.schematic.cloud/download/{key}"
  # The url used to generate a deletion link from.
  # {key} will be replaced with the generated key
  delete-url: "https://api.schematic.cloud/delete/{key}"

# Schematic Settings
# See https://intellectualsites.gitbook.io/plotsquared/schematics/schematic-on-claim for more information.
schematics:
  # Whether schematic based generation should paste schematic on top of plots, or from Y=1
  paste-on-top: true
  # Whether schematic based road generation should paste schematic on top of roads, or from Y=1
  paste-road-on-top: true
  # If schematics that do not match a plot's size should be pasted anyway
  #  - This will still only paste a schematic with a plot's bounds.
  #  - If a schematic is too big, it will cut off, and if too small, will not full the plot.
  paste-mismatches: true
  # If the wall height should be taken into account when calculating the road schematic paste height
  #  - If true, will use the lower of wall and road height.
  #  - If true, will ensure correct schematic behaviour (no parts are cut off).
  #  - Set to false if you experience the road being set one block too low
  #    (only for road schematics created pre 6.1.4).
  use-wall-in-road-schem-height: true

# Update checker settings
updatechecker:
  # How often to poll for updates (in minutes)
  poll-rate: 360
  # Only notify console once after an update is found
  notify-once: true

# General settings
general:
  # Display scientific numbers (4.2E8)
  scientific: false
  # Replace wall when merging
  merge-replace-wall: true
  # Always show explosion Particles, even if explosion flag is set to false
  always-show-explosions: false
  # Blocks that may not be used in plot components
  # Checkout the wiki article regarding plot components before modifying: https://intellectualsites.gitbook.io/plotsquared/customization/plot-components
  invalid-blocks:
    - "acacia_button"
    - "acacia_fence_gate"
    - "acacia_door"
    - "acacia_pressure_plate"
    - "acacia_trapdoor"
    - "acacia_sapling"
    - "acacia_sign"
    - "acacia_wall_sign"
    - "acacia_leaves"
    - "birch_button"
    - "birch_fence_gate"
    - "birch_door"
    - "birch_pressure_plate"
    - "birch_trapdoor"
    - "birch_sapling"
    - "birch_sign"
    - "birch_wall_sign"
    - "birch_leaves"
    - "dark_oak_button"
    - "dark_oak_fence_gate"
    - "dark_oak_door"
    - "dark_oak_pressure_plate"
    - "dark_oak_trapdoor"
    - "dark_oak_sapling"
    - "dark_oak_sign"
    - "dark_oak_wall_sign"
    - "dark_oak_leaves"
    - "jungle_button"
    - "jungle_fence_gate"
    - "jungle_door"
    - "jungle_pressure_plate"
    - "jungle_trapdoor"
    - "jungle_sapling"
    - "jungle_sign"
    - "jungle_wall_sign"
    - "jungle_leaves"
    - "oak_button"
    - "oak_fence_gate"
    - "oak_door"
    - "oak_pressure_plate"
    - "oak_trapdoor"
    - "oak_sapling"
    - "oak_sign"
    - "oak_wall_sign"
    - "oak_leaves"
    - "spruce_button"
    - "spruce_fence_gate"
    - "spruce_door"
    - "spruce_pressure_plate"
    - "spruce_trapdoor"
    - "spruce_sapling"
    - "spruce_sign"
    - "spruce_wall_sign"
    - "spruce_leaves"
    - "activator_rail"
    - "detector_rail"
    - "rail"
    - "allium"
    - "azure_bluet"
    - "blue_orchid"
    - "dandelion"
    - "lilac"
    - "orange_tulip"
    - "oxeye_daisy"
    - "peony"
    - "pink_tulip"
    - "poppy"
    - "potted_allium"
    - "potted_azure_bluet"
    - "potted_birch_sapling"
    - "potted_blue_orchid"
    - "potted_brown_mushroom"
    - "potted_cactus"
    - "potted_fern"
    - "potted_jungle_sapling"
    - "potted_oak_sapling"
    - "potted_orange_tulip"
    - "potted_oxeye_daisy"
    - "potted_pink_tulip"
    - "potted_red_mushroom"
    - "potted_red_tulip"
    - "red_mushroom"
    - "red_tulip"
    - "potted_spruce_sapling"
    - "potted_white_tulip"
    - "rose_bush"
    - "sunflower"
    - "white_tulip"
    - "cornflower"
    - "wither_rose"
    - "attached_melon_stem"
    - "attached_pumpkin_stem"
    - "melon_stem"
    - "pumpkin_stem"
    - "mushroom_stem"
    - "beetroots"
    - "brown_mushroom"
    - "cactus"
    - "carrots"
    - "chorus_flower"
    - "chorus_plant"
    - "cocoa"
    - "dead_bush"
    - "fern"
    - "kelp_plant"
    - "large_fern"
    - "lily_pad"
    - "potatoes"
    - "sea_pickle"
    - "seagrass"
    - "sugar_cane"
    - "tall_grass"
    - "tall_seagrass"
    - "vine"
    - "wheat"
    - "bamboo"
    - "anvil"
    - "barrier"
    - "beacon"
    - "brewing_stand"
    - "bubble_column"
    - "cake"
    - "cobweb"
    - "comparator"
    - "creeper_head"
    - "creeper_wall_header"
    - "damaged_anvil"
    - "daylight_detector"
    - "dragon_egg"
    - "dragon_head"
    - "dragon_wall_head"
    - "enchanting_table"
    - "end_gateway"
    - "end_portal"
    - "end_rod"
    - "ender_chest"
    - "chest"
    - "flower_pot"
    - "grass"
    - "heavy_weighted_pressure_plate"
    - "lever"
    - "light_weighted_pressure_plate"
    - "player_head"
    - "redstone_wire"
    - "repeater"
    - "comparator"
    - "redstone_torch"
    - "torch"
    - "redstone_wall_torch"
    - "wall_torch"
    - "sign"
    - "skeleton_skull"
    - "skeleton_wall_skull"
    - "snow"
    - "stone_pressure_plate"
    - "trapped_chest"
    - "tripwire"
    - "tripwire_hook"
    - "turtle_egg"
    - "wall_sign"
    - "zombie_head"
    - "zombie_wall_head"
    - "bell"
    - "black_bed"
    - "black_banner"
    - "black_carpet"
    - "black_concrete_powder"
    - "black_wall_banner"
    - "blue_bed"
    - "blue_banner"
    - "blue_carpet"
    - "blue_concrete_powder"
    - "blue_wall_banner"
    - "brown_bed"
    - "brown_banner"
    - "brown_carpet"
    - "brown_concrete_powder"
    - "brown_wall_banner"
    - "cyan_bed"
    - "cyan_banner"
    - "cyan_concrete_powder"
    - "cyan_carpet"
    - "cyan_wall_banner"
    - "gray_bed"
    - "gray_banner"
    - "gray_concrete_powder"
    - "gray_carpet"
    - "gray_wall_banner"
    - "green_bed"
    - "green_banner"
    - "green_concrete_powder"
    - "green_carpet"
    - "green_wall_banner"
    - "light_blue_bed"
    - "light_blue_banner"
    - "light_blue_concrete_powder"
    - "light_blue_carpet"
    - "light_blue_wall_banner"
    - "light_gray_bed"
    - "light_gray_banner"
    - "light_gray_concrete_powder"
    - "light_gray_carpet"
    - "light_gray_wall_banner"
    - "lime_bed"
    - "lime_banner"
    - "lime_concrete_powder"
    - "lime_carpet"
    - "lime_wall_banner"
    - "magenta_bed"
    - "magenta_banner"
    - "magenta_concrete_powder"
    - "magenta_carpet"
    - "magenta_wall_banner"
    - "orange_bed"
    - "orange_banner"
    - "orange_concrete_powder"
    - "orange_carpet"
    - "orange_wall_banner"
    - "pink_bed"
    - "pink_banner"
    - "pink_concrete_powder"
    - "pink_carpet"
    - "pink_wall_banner"
    - "purple_bed"
    - "purple_banner"
    - "purple_concrete_powder"
    - "purple_carpet"
    - "purple_wall_banner"
    - "red_bed"
    - "red_banner"
    - "red_concrete_powder"
    - "red_carpet"
    - "red_wall_banner"
    - "white_bed"
    - "white_banner"
    - "white_concrete_powder"
    - "white_carpet"
    - "white_wall_banner"
    - "yellow_bed"
    - "yellow_banner"
    - "yellow_concrete_powder"
    - "yellow_carpet"
    - "yellow_wall_banner"
    - "brain_coral"
    - "brain_coral_fan"
    - "brain_coral_wall_fan"
    - "bubble_coral"
    - "bubble_coral_block"
    - "bubble_coral_fan"
    - "bubble_coral_wall_fan"
    - "dead_brain_coral"
    - "dead_brain_coral_block"
    - "dead_brain_coral_fan"
    - "dead_brain_coral_wall_fan"
    - "dead_bubble_coral"
    - "dead_bubble_coral_fan"
    - "dead_bubble_coral_wall_fan"
    - "dead_fire_coral"
    - "dead_fire_coral_block"
    - "dead_fire_coral_fan"
    - "dead_fire_coral_wall_fan"
    - "dead_horn_coral"
    - "dead_horn_coral_block"
    - "dead_horn_coral_fan"
    - "dead_tube_coral"
    - "dead_tube_coral_wall_fan"
    - "dried_kelp_block"
    - "horn_coral"
    - "horn_coral_block"
    - "horn_coral_fan"
    - "horn_coral_wall_fan"
    - "tube_coral"
    - "tube_coral_block"
    - "tube_coral_fan"
    - "tube_coral_wall_fan"
```
