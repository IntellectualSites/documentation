# Plot membership tiers

## Introduction

PlotSquared works with the following tiers of memberships to define the different behaviors / permissions / restrictions for minecraft events, plot flags, commands etc.

The member ties are one of the main part of PlotSquared by self. It's not usable for LuckPerms, but other plugins can check the membership tier for a player for a specific plot with the [PlotSquared API](api/api-documentation.md). No configurations
needed here to have memberships.

## Tiers

### Denied

denied / banned players via `/p deny ...`

* Cannot edit the plot
* Cannot enter the plot

### Guest

normal / non-added users

* Cannot edit the plot
* Can enter the plot

### Member

added users via `/p add ...`

* Can enter the plot
* Can place / break blocks while the plot owner is online

### Trusted

trusted users via `/p trust ...`

* Can enter the plot
* Can place / break blocks even if the plot owner is offline
* Can use WorldEdit on the plot

### Owner

plot owner via `/p auto`, `/p claim`, `/p setowner ...` or other

* Has full control over the plot
* Adding or removing users
* Can place / break blocks
* Use WorldEdit
