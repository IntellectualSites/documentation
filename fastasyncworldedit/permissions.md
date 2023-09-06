**Info:** For command related permissions: [see
here](#../basic-commands/main-commands-and-permissions.adoc)

# Admin permissions

-   `fawe.admin` (allow bypassing through `/wea` command)

-   `fawe.bypass` (automatically bypass WorldEdit restrictions and limits)

-   `worldedit.anyblock` (bypass `disallowed-blocks` in the `worldedit-config.yml`)

-   `worldedit.inventory.unrestricted` (bypass inventory restrictions if
    those are enabled)

# User permissions:

-   `fawe.limit.<limitgroup>` (Grants the user the specific group of
    limits. With the limitgroup `unlimited` all limits are infinite.)

-   [`fawe.permpack.basic`](https://github.com/IntellectualSites/FastAsyncWorldEdit/blob/main/worldedit-bukkit/src/main/resources/plugin.yml#L31)
    (A bunch of worldedit perms which are okay to use on a creative
    server)

-   `worldedit.navigation.jumpto.tool` (Access to the jumpto wand)

-   `worldedit.navigation.thru.tool` (Access to the thru wand)

# Region permissions:

FAWE by default is restricted to regions, this is useful for servers
wanting to give ordinary players access to WorldEdit. To enable region
restrictions, set config setting `region-restrictions` true, and give
players the appropriate region permission. If you want an admin to be
able to WorldEdit anywhere using `//wea` command, give them the
`fawe.admin` permission.

-   `fawe.plotsquared` - Allow PlotSquared owners
    (`+/plot setowner ...+`) and trusted (`+/plot trust ...+`) to use
    WorldEdit. NOTE: This permission is activated by default in the
    [plugin.yml](https://github.com/IntellectualSites/FastAsyncWorldEdit/blob/e40a657faf993536133b2e1bbe771a5c96619bd7/worldedit-bukkit/src/main/resources/plugin.yml#L14-L17)
    ! For a permission override it is advised to use this permission
    instead of the child `fawe.plotsquared.trusted` because of a higher
    prioritization.

-   `fawe.plotsquared.member` - Allows PlotSquared members
    (`+/plot add ...+`) to use WorldEdit.

-   `fawe.plotsquared.admin` - Allows WorldEdit in any PlotSquared plots
    (but not on roads).

-   `fawe.griefprevention`

-   `fawe.plotme`

-   `fawe.towny`

-   `fawe.towny.member`

-   `fawe.towny.*`

-   `fawe.worldguard` - Allow WorldGuard region owners
    (`+/rg addowner ...+`) to use WorldEdit.

-   `fawe.worldguard.member` - Allow WorldGuard region members
    (`+/rg addmember ...+`) to use WorldEdit.

-   `fawe.worldguardextraflags` - If you’ve installed WorldGuard Extra
    Flags this permission is also used.

# Extended WorldEdit permissions:

-   `worldedit.schematic.load.other` (allow loading of schematics in the
    main schematics folder via `../` when per-player-schematics are
    enabled)

-   `worldedit.schematic.save.other` (allow saving of schematics in the
    main schematics folder via `../` when per-player-schematics are
    enabled)
