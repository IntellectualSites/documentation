# Commands

## Introduction

All commands start with `/plot` if not configured else wise.

As alternative or short-command you can use the following aliases:
`plots, p, plotsquared, p2, ps, 2, plotme`

## Command Overview

PlotSquared have an amount of commands for different uses. At here you find the complete command list with her syntax and permissions.

command-categories:

* [Basics](#basics)
* [Info](#info)
* [Teleport](#teleport)
* [Chat](#chat)
* [Claiming](#claiming)
* [Settings](#settings)
* [Schematic](#schematic)
* [Rating](#rating)
* [Administration](#administration)
* [Debug](#debug)
* [Other_permissions](#other-permissions)

{% hint style="info" %}
If a command or permission contains the `Secondary` description, it means that a command supports several sub-commands or has several purposes. Furthermore, permissions with `.admin` contain administrative overrides.
{% endhint %}

{% hint style="info" %}
You can check out our [permission-packs](permission/permission-packs.md) to avoid redundant permission assignments.
{% endhint %}

---

## Basics

### HELP

Get this help menu

**Usage:**
`/plot help [category|#]`

**Aliases:**
`[ ? ]`

**Permissions:**
`plots.use` - Access to the command `/plot help`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Help.java)

### CONFIRM

Confirm an action

**Usage:**
`/plot confirm`

**Permissions:**
`plots.confirm` - Access to the command `/plot confirm`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Confirm.java)

---

## Info

### INFO

Display plot info

With `-f` you get the administrative override to bypass the `hide-info` flag.

**Usage:**

_Primary:_

* `/plot [[world;]X;Z] info [-f]`
* `/plot info [[world;]X;Z] [-f]`

_Secondary:_

* `/plot [[world;]X;Z] info [-f] <category: members, alias, biome, seen, denied, flags, id, size, trusted, owner, rating>`
* `/plot info [[world;]X;Z] [-f] <category: members, alias, biome, seen, denied, flags, id, size, trusted, owner, rating>`

**Aliases:**
`[ i ]`

**Permissions:**

_Primary:_

* `plots.info` - Access to the command `/plot info`

_Secondary:_

* `plots.admin.info.force` - Access to the command flag `-f`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Info.java)

### LIST

List plots

**Usage:**

_Primary:_

* `+/plot list <forsale | mine | shared | world | top | all | unowned | unknown | player | world | done |fuzzy <search...>> [#]+`

_Secondary:_

* `+/plot list fuzzy <search...> [#]+`

**Aliases:**
`[ l, find, search ]`

**Permissions:**

_Primary:_

* `plots.list` - Access to the command `/plot list`

_Secondary:_

* `plots.list.world.<arg>`
* `plots.list.top` - Access to the command `/plot list top`
* `plots.list.mine` - Access to the command `/plot list mine`
* `plots.list.world` - Access to the command `/plot list world`
* `plots.list.done` - Access to the command `/plot list done`
* `plots.list.all` - Access to the command `/plot list all`
* `plots.list.shared` - Access to the command `/plot list shared`
* `plots.list.expired` - Access to the command `/plot list expired`
* `plots.list.unowned` - Access to the command `/plot list unowned`
* `plots.list.world.<world>"` - Access to the command `/plot list world <world>`
* `plots.list.player` - Access to the command `/plot list player <player>`
* `plots.list.forsale` - Access to the command `/plot list forsale`
* `plots.list.unknown` - Access to the command `/plot list unknown`
* `plots.list.area` - Access to the command `/plot list area`
* `plots.list.fuzzy` - Access to the command `/plot list fuzzy #`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/ListCmd.java)

### TARGET

Target a plot with your compass

**Usage:**
`/plot target <<X;Z> | nearest>`

**Permissions:**
`plots.target` - Access to the command `/plot target`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Target.java)

### CAPS

Show plot mob and entity caps

**Usage:**
`/plot [[world;]X;Z] caps`

**Permissions:**

_Primary:_

* `plots.caps` - Access to the command `/plot caps`

_Secondary:_

* `plots.admin.caps.other` - Administrative override to manage caps at other plots

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Caps.java)

---

## Teleport

### HOME

Teleport to your plot(s).

**Usage:**

normal:

* `/plot home`
* `/plot home <#>`
* `/plot home <area/world> <#>`

alias:

* `/plot home <alias>`

coordinates:

* `/plot home <X>;<Z>`
* `/plot home <area/world> <X>;<Z>`
* `/plot home <area/world>;<X>;<Z>`

**Aliases:**
`[ h ]`

**Permissions:**

_Primary:_

* `plots.home` - Access to the command `/plot home`

_Secondary:_

* `plots.visit.owned` - Access to visit owned plots

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/HomeCommand.java)

### Visit

Use this command to go to the plot of a specific player.

If no **plot number** is specified, you will be taken to the player's 1st (= oldest) plot. With the plot nummer you can cycle forwards and backwards by entering numerical values. The 1st plot therefore also corresponds to plot number "1". With the keyword "last" (or "n") you get to the latest (= newest) plot of the player. This corresponds to the plot number "-1".

normal:

* `/plot visit <player>`
* `/plot visit <player> <plot number|negative plot number|'last' or 'n'>`
* `/plot visit <player> <area/world>`
* `/plot visit <player> <area/world> <plot number|negative plot number|'last' or 'n'>`

alias:

* `/plot visit <alias>`

coordinates:

* `/plot visit <X>;<Z>`
* `/plot visit <area/world>;<X>;<Z>`

**Aliases:**
`[ v, tp, teleport, goto, warp ]`

**Permissions:**

_Primary:_

* `plots.visit` - Access to the command `/plot visit`
* `plots.visit.other` - Access to visit other people's plots

_Secondary:_

* `plots.visit.unowned` - Access to visit unowned plots
* `plots.visit.owned` - Acecss to visit owned plots
* `plots.visit.shared` - Access to visit shared plots
* `plots.admin.visit.untrusted` - Access to visit plots where the player is not trusted to

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Visit.java)

### MIDDLE

Teleports you to the center of the plot.

**Usage:**
`/plot [[world;]X;Z] middle`

**Aliases:**
`[ center, centre ]`

**Permissions:**
`plots.middle` - Access to the command `/plot middle`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Middle.java)

---

## Chat

### COMMENT

Comment on a plot

**Usage:**
`/plot [[world;]X;Z] comment <message-type: owner | public | report (= for staff)> <comment>`

**Aliases:**
`[ msg ]`

**Permissions:**
`plots.comment` - Access to the command `/plots comment`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Comment.java)

### INBOX

List the comments for a plot / delete a message or clear the list

**Usage:**

_Primary:_

* `/plot [[world;]X;Z] inbox`

_Secondary:_

* `/plot [[world;]X;Z] inbox <message-type: owner | public | report> [delete <index> | clear | page]`

**Permissions:**
`plots.inbox` - Access to the command `/plots inbox`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Inbox.java)

---

## Claiming

### BUY

Buy the plot you are standing on.

For this command the economy feature is to activate in the `worlds.yml` for this world. Additionally, you can change the prices for "merge", "sell" and "claim" at this config part too.

**Usage:**
`/plot [[world;]X;Z] buy`

**Permissions:**
`plots.buy` - Access to `/plot buy`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Buy.java)

### CLAIM

Claim the current plot you are standing on, if you're not activated the economy feature in the `worlds.yml` for this world.
If you activated the "specify_on_claim" option in the worlds.yml you can define a plot-schematic.

**Usage:**

_Primary:_

* `/plot [[world;]X;Z] claim`

_Secondary:_

* `/plot [[world;]X;Z] claim <schematic>`

**Aliases:**
`[ c ]`

**Permissions:**

_Primary:_

* `plots.claim` - Access to `/plot claim`
* `plots.plot.<max plot amount>` - Limit the amounts of plots a player can claim

_Secondary:_

* `plots.claim.<schem>` - Dynamic permission associated with your schematic, if used.
* `plots.admin.command.schematic` - Administrative access to schematic claims.

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Claim.java)

### AUTO

Claim the nearest plot in your world if you're not activated the economy feature in the `worlds.yml` for this world.

**Usage:**
`/plot auto [length, width]`

**Aliases:**
`[ a ]`

**Permissions:**

_Primary:_

* `plots.auto` - Access to the command `/plot auto`
* `plots.plot.<max plot amount>` - Limit the amounts of plots a player can claim

_Secondary:_

* `plots.claim.<schem>` - Dynamic permission associated with your schematic, if used.
* `plots.auto.mega` - Access to the length and width arguments
* `plots.admin.command.schematic` - Administrative access to schematic claims.

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Auto.java)

---

## Settings

### SETOWNER

Set the plot owner.

**Usage:**
`/plot [[world;]X;Z] setowner <player>`

**Aliases:**
`[ owner, so, seto ]`

**Permissions:**

_Primary:_

* `plots.admin.command.setowner`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Owner.java)

### ADD

With this command you "add him" to the whitelist of the plot. Allow a user to build in a plot while the plot owner is online.

**Usage:**
`/plot [[world;]X;Z] add <player | *>`

**Permissions:**

_Primary:_

* `plots.add` - Access to the command `/plot add`
* `plots.add.<amount>` - Specifying the amount of people the plot owner can add

_Secondary:_

* `plots.admin.command.add` - Administrative override
* `plots.add.everyone` - Access to add everyone

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Add.java)

### TRUST

With this command you "add him" to the whitelist of the plot. It gives the added user more permissions as the normal ADD command: it allows a user to build in a plot every time and use WorldEdit while the plot owner is offline.

**Usage:**
`/plot [[world;]X;Z] trust <player | *>`

**Aliases:**
`[ t ]`

**Permissions:**

_Primary:_

* `plots.trust` - Access to the command `/plot trust`
* `plots.trust.<amount>` - Specifying the amount of people the plot owner can trust

_Secondary:_

* `plots.admin.command.trust` - Administrative override
* `plots.trust.everyone` - Access to trust everyone

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Trust.java)

### REMOVE

Remove a player from a plot. This includes the player whitelist (ADD, TRUST) and the blacklist (DENY) of the plot.

**Usage:**
`/plot [[world;]X;Z] remove <player | *>`

**Aliases:**
`[ r, untrust, ut, undeny, ud, unban ]`

**Permissions:**

_Primary:_

* `plots.remove` - Access to the command `/plot remove`

_Secondary:_

* `plots.admin.command.remove` Administrative override

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Remove.java)

### DENY

Deny a user from entering a plot. With this command you "add him" to the blacklist of the plot.

**Usage:**
`/plot [[world;]X;Z] deny <player | *>`

**Aliases:**
`[ d, ban ]`

**Permissions:**

_Primary:_

* `plots.deny` - Access to the command `/plot deny`
* `plots.deny.<amount>` - Specifying the amount of people the plot owner can deny

_Secondary:_

* `plots.admin.command.deny` - Administrative override
* `plots.admin.entry.denied` - Administrative override to bypass plot deny
* `plots.deny.everyone` - Access to deny everyone

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Deny.java)

### GRANT

Manage plot grants.

**Usage:**
`/plot grant <check | add> [player]`

**Permissions:**

* `plots.grant` - Access to the command `/plot grant`
* `plots.grant.add` - Access to the command `/plot grant add`
* `plots.grant.check` - Access to the command `/plot grant check`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Grant.java)

### KICK

Kick a player from your plot.

**Usage:**
`/plot [[world;]X;Z] kick <player | *>`

**Aliases:**
`[ k ]`

**Permissions:**

_Primary:_

* `plots.kick` - Access to the command `/plot kick`

_Secondary:_

* `plots.admin.command.kick` - Administrative override

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Kick.java)

### MERGE

Merge the plot you are standing on with another plot.

**Usage:**
`/plot [[world;]X;Z] merge <all | n | e | s | w> [removeroads]`

**Aliases:**
`[ m ]`

**Permissions:**

_Primary:_

* `plots.merge` - Access to the command `/plot claim`

_Secondary:_

* `plots.merge.<amount>` - Limit the amount of plots a player can merge to a mega plot
* `plots.admin.command.merge` - Administrative override
* `plots.merge.other` - Access to merge the plot with other people
* `plots.merge.keeproad` - Access to use the keeproad argument

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Merge.java)

### UNLINK

Unlink a mega-plot (merged plot)

**Usage:**
`/plot [[world;]X;Z] unlink [createroads]`

**Aliases:**
`[ u, unmerge ]`

**Permissions:**

_Primary:_

* `plots.unlink` - Access to the command `/plot unlink`

_Secondary:_

* `plots.admin.command.unlink` - Administrative override

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Unlink.java)

### SETHOME

Set the plot-home you're standing on. The plothome is the position where the player will teleport if he uses the `/plot home` or `/plot visit` command. With the argument `none` you reset the position.

**Usage:**
`/plot [[world;]X;Z] set home [none]`

**Aliases:**
`[ sh, seth, sethome ]`

**Permissions:**

* `plots.set.home` - Access to the command `/plot set home`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/SetHome.java)

### ALIAS

Set the plot name

**Usage:**

* `/plot [[world;]X;Z] alias set <alias>`
* `/plot [[world;]X;Z] alias remove <alias>`

**Aliases:**
`[ setalias, sa, name, rename, setname, seta, nameplot ]`

**Permissions:**

_Primary:_

* `plots.alias.set` - Access to the command `/plot alias set`
* `plots.alias.remove` - Access to the command `/plot alias remove`

_Secondary:_

* `plots.admin.alias.set` - Administrative override to set an alias
* `plots.admin.alias.remove` - Administrative override to remove an alias

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Alias.java)

### SETDESCRIPTION

Set the plot description

**Usage:**
`/plot [[world;]X;Z] desc <description>`

**Aliases:**
`[ setdescription, setdesc, setd, description ]`

**Permissions:**
`plots.set.desc` - Access to the command `/plot set description`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Desc.java)

### MUSIC

Player music in a plot

**Usage:**
`/plot [[world;]X;Z] music`

**Permissions:**
`plots.music` - Access to the command `/plot music`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Music.java)

### SETBIOME

List all possible biomes or change the plot biome. (You can change the biome with WorldEdit / FAWE too.) If you clear or delete the plot, you reset the biom setting too, so the default biome (changeable in the `worlds.yml`) will be used.

**Usage:**
`/plot [[world;]X;Z] biome [biome]`

**Aliases:**
`[ biome, sb, setb, b ]`

**Permissions:**
`plots.set.biome` - Access to the command `/plot set biome`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Biome.java)

### SETFLAG

Manage plot flags.

**Usage:**

_Primary:_

* `/plot [[world;]X;Z] flag`

_Secondary:_

* `/plot [[world;]X;Z] flag info <flag>`
* `/plot [[world;]X;Z] flag set <flag> <value>`
* `/plot [[world;]X;Z] flag add <flag> <values>`
* `/plot [[world;]X;Z] flag remove <flag> [values]`

**Aliases:**
`[ f, flag ]`

**Permissions:**

_Primary:_

* `plots.flag` - Access to the command `/plot flag`

_Secondary:_

* `plots.set.flag` - Access to the command `/plot set flag`
* `plots.flag.remove` - Access to the command `/plot flag remove`
* `plots.flag.add` - Access to the command `/plot flag add`
* `plots.set.flag.other` - Access to set flag on other people's plots
* `plots.set.flag.<arg>` - Access to the command `/plot set flag <arg>`
* `plots.flag.list` - Access to the command `/plot flag list`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/FlagCommand.java)

### DONE

Mark a plot as done

**Usage:**
`/plot [[world;]X;Z] done`

**Aliases:**
`[ submit ]`

**Permissions:**

_Primary:_

* `plots.done` - Access to the command `/plot done`

_Secondary:_

* `plots.admin.command.done` - Administrative override

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Done.java)

### CONTINUE

Continue a plot that was previously marked as done

**Usage:**
`/plot [[world;]X;Z] continue`

**Permissions:**

_Primary:_

* `plots.continue` - Access to the command `/plot continue`

_Secondary:_

* `plots.admin.command.continue` - Administrative override

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Continue.java)

### TOGGLE

Toggle per user settings

**Usage:**
`/plot [[world;]X;Z] toggle <chat | chatspy | clear-confirmation | time | titles | worldedit>`

**Permissions:**

_Primary:_

* `plots.use` - Access to the command `/plot toggle`

_Secondary:_

* `plots.admin.command.chat` - Access to the command `/plot toggle chat-spy`
* `plots.worldedit.bypass` - Access to the command `/plot wea`
* `plots.toggle.chat` - Access to the command `/plot chat`
* `plots.admin.command.autoclear` - Access to the command `/plot toggle clear-confirmation`
* `plots.toggle.titles` - Access to the command `/plot toggle titles`
* `plots.toggle.time` - Access to the command `/plots toggle time`
* `plots.toggle.debug` - Access to the command `/plots toggle debug`
* `plots.admin.debug.other` - Administrative override to toggle the debugmode for other players

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Toggle.java)

### SET

Set a plot value

**Usage:**
`+/plot [[world;]X;Z] set <biome | alias | home | floor | wall | all | air | main | middle | outline | border> <value...>+`

**Aliases:**
`[ s ]`

**Permissions:**

_Primary:_

* `plots.set` - Access to the command `/plot set`

_Secondary:_

* `plots.set." + <component>`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Set.java)

### COPY

Copy a plot.

**Usage:**
`/plot [[world;]X;Z] copy <X;Z>`

**Aliases:**
`[ copypaste ]`

**Permissions:**

_Primary:_

* `plots.copy` - Access to the command `/plot copy`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Copy.java)

### MOVE

Move a plot.

**Usage:**
`/plot [[world;]X;Z] move <X;Z>`

**Permissions:**

_Primary:_

* `plots.move` - Access to the command `/plot move`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Move.java)

### SWAP

Swap two plots.

**Usage:**
`/plot [[world;]X;Z] swap <X;Z>`

**Aliases:**
`[ switch ]`

**Permissions:**

_Primary:_

* `plots.swap` - Access to the command `/plot swap`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Swap.java)

### BACKUP

Manage plot backups

**Usage:**
`/plot [[world;]X;Z] backup <save | list | load>`

**Permissions:**

_Primary:_

* `plots.backup` - Access to the command `/plot backup`

_Secondary:_

* `plots.backup.save` - Access to the command `/plot backup save`
* `plots.backup.load` - Access to the command `/plot backup load`
* `plots.backup.list` - Access to the command `/plot backup list`
* `plots.admin.backup.other` - Administrative override to manage backups at other plots

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Backup.java)

### CLEAR

Clear the plot you stand on. It doesn't reset any plot settings or flag (with exception of the biome setting).

**Usage:**
`/plot [[world;]X;Z] clear`

**Aliases:**
`[ reset ]`

**Permissions:**

_Primary:_

* `plots.clear` - Access to the command `/plot clear`

_Secondary:_

* `plots.admin.command.clear` - Administrative override

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Clear.java)

### DELETE

Delete the plot you stand on.

**Usage:**
`/plot [[world;]X;Z] delete`

**Aliases:**
`[ dispose, del ]`

**Permissions:**

_Primary:_

* `plots.delete` - Access to the command `/plot delete`

_Secondary:_

* `plots.admin.command.delete` - Administrative override to delete plots.

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Delete.java)

---

## Schematic

### LOAD

List the plot snapshots (after: `/plot save`) or load a snapshot

**Usage:**

* `/plot [[world;]X;Z] load`
* `/plot [[world;]X;Z] load <index>`

**Aliases:**
`[ restore ]`

**Permissions:**
_Primary:_

* `plots.load` - Access to the command `/plot load`

_Secondary:_

* `plots.admin.command.load` - Administrative override to load a plot.

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Load.java)

### DOWNLOAD

Download your plot

**Usage:**
`/plot [[world;]X;Z] download [schematic | world]`

**Aliases:**
`[ download, dl ]`

**Permissions:**

_Primary:_

* `plots.download` - Access to the command `/plot download`
* `plots.download.world` - Access to the command `/plot download <world>`

_Secondary:_

* `plots.admin.command.download` - Administrative override to download other plots

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Download.java)

### SCHEMATIC

Schematic command

**Usage:**
`/plot [[world;]X;Z] schematic <save | saveall | paste>`

**Aliases:**
`[ sch, schem ]`

**Permissions:**

_Primary:_

* `plots.schematic` - Access to the command `/plot schematic`

_Secondary:_

* `plots.admin.command.schematic.paste` - Administrative override to paste schematics
* `plots.admin.command.schematic.save` - Administrative override to save schematics
* `plots.schematic.save` - Access to the command `/plot schematic save`
* `plots.schematic.paste` - Access to the command `/plot schematic paste `

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/SchematicCmd.java)

---

## Rating

### LIKE

Like a plot

**Usage:**
`/plot [[world;]X;Z] like [next | purge]`

**Permissions:**

_Primary:_

* `plots.like` - Access to the command `/plot like`

_Secondary:_

* `plots.admin.command.rate` - Administrative override for ratings

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Like.java)

### Dislike

Dislike a plot

**Usage:**
`/plot [[world;]X;Z] dislike [next | purge]`

**Permissions:**

_Primary:_

* `plots.dislike` - Access to the command `/plot like`

_Secondary:_

* `plots.admin.command.rate` - Administrative override for ratings

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Dislike.java)

### RATE

Rate the plot

**Usage:**
`/plot [[world;]X;Z] rate [# | next | purge]`

**Aliases:**
`[ rt ]`

**Permissions:**

_Primary:_

* `plots.rate` - Access to the command `/plot rate`

_Secondary:_

* `plots.comment` - Access to the command `/plot comment`
* `plots.admin.command.rate` - Administrative override for ratings

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Rate.java)

---

## Administration

### PLUGIN

Show plugin information

**Usage:**
`/plot plugin`

**Aliases:**
`[ version ]`

**Permissions:**
`plots.use` - Access to the command `/plot plugin`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/PluginCmd.java)

### TEMPLATE

Create or use a world template

**Usage:**

_Primary:_

* `/plot template [import | export] <world> <template>`

_Secondary:_

* `/plot template <import|export> <world> [template]`
* `/plot template export <world>`
* `/plot template import <world> <template>`

**Permissions:**
`plots.admin` - Access to the command `/plot template`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Template.java)

### SETUP

Setup wizard for plot worlds

**Usage:**
`/plot setup`

**Aliases:**
`[ create ]`

**Permissions:**
`plots.admin.command.setup`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Setup.java)

### AREA

Create a new PlotArea

**Usage:**

_Primary:_

* `/plot area <create|info|list|tp|regen>`

_Secondary:_

* `/plot visit [area]`
* `/plot area info [area]`
* `+/plot area create [world[:id]] [<modifier>=<value>]...+`
* `/plot area list [#]`

**Aliases:**
`[ world ]`

**Permissions:**

* `plots.area` - Access to the command `/plot area`
* `plots.area.list` - Access to the command `/plot area list`
* `plots.area.info` - Access to the command `/plot area info`
* `plots.area.create` - Access to the command `/plot area create`
* `plots.area.tp` - Access to the command `/plot area tp`
* `plots.area.regen` - Access to the command `/plot area regen`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Area.java)

### CREATEROADSCHEMATIC

Add a road schematic to your world using the roads around your current plot

**Usage:**
`/plot createroadschematic`

**Aliases:**
`[ crs ]`

**Permissions:**

* `plots.createroadschematic` - Access to the command `/plot createroadschematic`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/CreateRoadSchematic.java)

### REGENALLROADS

Regenerate all roads in the map using the set road schematic

**Usage:**
`/plot regenallroads <world> [height]`

**Aliases:**
`[ rgar ]`

**Permissions:**

* `plots.regenallroads` - Access to the command `/plot regenallroads`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/RegenAllRoads.java)

### PURGE

Purge all plots for a world

**Usage:**
`/plot purge world:<world> area:<area> id:<id> owner:<owner> shared:<shared> unknown:[true|false] clear:[true|false]`

**Permissions:**

* `plots.admin` - Access to the command `/plot purge`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Purge.java)

### RELOAD

Reload translations and world settings

**Usage:**
`/plot reload`

**Aliases:**
`[ rl ]`

**Permissions:**
`plots.admin.command.reload` - Access to the command `/plot reload`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Reload.java)

### DATABASE

Convert/Backup Storage

**Usage:**
`/plots database [area] <sqlite | mysql | import>`

**Aliases:**
`[ convert ]`

**Permissions:**
`plots.database` - Access to the command `/plot database`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/DatabaseCommand.java)

### CONDENSE

Condense a plotworld

**Usage:**
`/plot condense <area> <start | stop |info> [radius]`

**Permissions:**
`plots.admin` - Access to the command `/plot condense`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Condense.java)

### TRIM

Delete unmodified portions of your plotworld

**Usage:**
`/plot trim <world> [regenerate]`

**Permissions:**
`plots.admin` - Access to the command `/plot trim`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Trim.java)

### CLUSTER

Manage a plot cluster

**Usage:**

_Primary:_

* `/plot cluster`

_Secondary:_

* `/plot cluster resize <pos1> <pos2>`
* `/plot cluster leave [name]`
* `/plot cluster info [name]`
* `/plot cluster create <name> <id-bot> <id-top>`
* `/plot cluster delete [name]`
* `/plot cluster list`
* `/plot cluster invite <player>`
* `/plot cluster sethome`
* `/plot cluster helpers <add|remove> <player>`
* `/plot cluster tp <name>`
* `/plot cluster kick <player>`

**Aliases:**
`[ clusters ]`

**Permissions:**

_Primary:_

* `plots.cluster` - Access to the command `/plot cluster`

_Secondary:_

* `plots.cluster.delete.other` - Administrative override to delete other clusters
* `plots.cluster.kick` - Access to the command `/plot cluster kick`
* `plots.cluster.leave` - Access to the command `/plot cluster leave`
* `plots.cluster.helpers` - Access to the command `/plot cluster helpers`
* `plots.cluster.create` - Access to the command `/plot cluster create`
* `plots.cluster.resize` - Access to the command `/plot cluster resize`
* `plots.cluster.invite.other` - Access to the command `/plot cluster invite`
* `plots.cluster.invite` - Access to the command `/plot cluster invite`
* `plots.cluster.tp` - Access to the command `/plot cluster tp`
* `plots.cluster.<#>` - Limit the amount of clusters a player can have
* `plots.cluster.resize.expand` - Access to the command `/plot cluster expand`
* `plots.cluster.info` - Access to the command `/plot cluster info`
* `plots.cluster.sethome.other` - Administrative override to sethome for other clusters
* `plots.cluster.resize.other` - Administrative override to resize other clusters
* `plots.cluster.tp.other` - Administrative override to teleport to other clusters
* `plots.cluster.kick.other` - Administrative override to kick players from other clusters
* `plots.cluster.create.other` - Administrative override to create other clusters
* `plots.cluster.list` - Access to the command `/plot cluster list`
* `plots.cluster.delete` - Access to the command `/plot cluster delete`
* `plots.cluster.resize.shrink` - Access to the command `/plot cluster resize shrink`
* `plots.cluster.sethome` - Access to the command `/plot cluster sethome`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Cluster.java)

---

## Debug

### DEBUGSAVETEST

This command will force the recreation of all plots in the DB

**Usage:**
`/plot debugsavetest`

**Permissions:**
`plots.debugsavetest` - Access to the command `/plot debugsavetest`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/DebugSaveTest.java)

### DEBUGLOADTEST

This debug command will force the reload of all plots in the DB

**Usage:**
`/plot debugloadtest`

**Permissions:**
`plots.debugloadtest` - Access to the command `/plot debugloadtest`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/DebugLoadTest.java)

### DEBUGALLOWUNSAFE

Allow unsafe actions until toggled off

**Usage:**
`/plot debugallowunsafe`

**Aliases:**
`[ debugallowunsafe ]`

**Permissions:**
`plots.debugallowunsafe` - Access to the command `/plot debugallowunsafe`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/DebugAllowUnsafe.java)

### DEBUG

Show debug information or all language messages

**Usage:**
`/plot debug [msg]`

**Permissions:**
`plots.admin` - Access to the command `/plot debug msg`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/Debug.java)

### DEBUGPASTE

Upload settings.yml, worlds.yml, your latest.log and Multiverse's worlds.yml (if being used) to https://athion.net/ISPaster/paste

**Usage:**
`/plot debugpaste`

**Aliases:**
`[ dp ]`

**Permissions:**
`plots.debugpaste` - Access to the command `/plot debugpaste`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/DebugPaste.java)

### DEBUGROADREGEN

Regenerate all roads based on the road schematic. Insert "plot" to regen it from the plot height, input "height [height]" to regen from a custom height.

**Usage:**
`/plot debugroadregen <plot | region [height]>`

**Permissions:**
`plots.debugroadregen` - Access to the command `/plot debugroadregen`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/DebugRoadRegen.java)

### DEBUGEXEC

Multi-purpose debug command

**Usage:**

_Primary:_

* `/plot debugexec`

_Secondary:_

* `/plot debugexec remove-flag <flag>`
* `/plot debugexec allcmd <condition> <command>`
* `/plot debugexec list-scripts [#]`
* `/plot debugexec all <condition> <code>`
* `/plot debugexec addcmd <file>`
* `/plot debugexec analyze <threshold>`

**Aliases:**
`[ exec, $ ]`

**Permissions:**
`plots.admin` - Access to the command `/plot debugexec`

**Source Code:** [here](https://github.com/IntellectualSites/PlotSquared/blob/main/Core/src/main/java/com/plotsquared/core/command/DebugExec.java)

---

## Other permissions

* `plots.admin.area.sudo` - ???
* `plots.projectile.unowned` - Shoot projectiles on unowned plots
* `plots.projectile.other` - Shoot projectiles at other people's plots
* `plots.admin.interact.blockedcommands` - Access to blocked commands of the `blocked-cmds` flag
* `plots.admin.update.notify` - Receive update notifications from SpigotMC.
* `plots.admin.exit.denied` - Administrative override to leave plots with the `deny-exit` flag.
* `plots.admin.entry.forcefield` - Administrative override to bypass the `forcefield` flag
* `plots.admin.destroy.unowned` - Administrative override to destroy blocks at unowned plots
* `plots.admin.build.unowned` - Administrative override to build blocks at unowned plots
* `plots.admin.destroy.groundlevel` - Administrative override to break the ground level
* `plots.admin.destroy.other` - Administrative override to destroy blocks at other plots
* `plots.admin.destroy.road` - Administrative override to destroy blocks at the road
* `plots.admin.build.road` - Administrative override to place blocks at the road
* `plots.admin.interact.unowned` - Administrative override to interact at unowned plots
* `plots.admin.interact.other` - Administrative override to interact with other plots
* `plots.admin.build.heightlimit` - Administrative override to bypass a custom height limit
