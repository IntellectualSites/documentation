# Placeholders

## Introduction

{% hint style="info" %}
The placeholder integration allows you to display data from other plugins in specific locations in PlotSquared.
{% endhint %}

For example, with [FeatherBoard](https://www.spigotmc.org/resources/2691) you can create a scoreboard (sideboard) with the info about the plot you're standing on. And with using [PlaceholderAPI](https://www.spigotmc.org/resources/6245), you can do `/plot flag set greeting Welcome %player_name%` which translates to "Welcome Steve" when the player Steve enters a plot. +
The `Player` expansion from PlaceholderAPI is required to be installed.

Currently, (FeatherBoard and) PlaceholderAPI placeholders, can be used in the `greeting` and `farewell` flag of a plot.

## Setup

PlotSquared has explicit and official support for [PlaceholderAPI](https://www.spigotmc.org/resources/6245) and [MVdWPlaceholderAPI](https://www.spigotmc.org/resources/11182).

Follow the instruction of these placeholder systems to install it correctly.

{% hint style="info" %}
For the PlaceholderAPI placeholders of PlotSquared you don't need to download a PAPI expansion. As opposed to some other plugins, PlotSquared handles everything internally.
{% endhint %}

## Placeholder Deactivation in PlotSquared

Placeholders can be turned off in `settings.yml`:

```yaml
  external-placeholders: false
```

## Tips for specific plugins

### Chat-System

If you're using **EssentialsChat** and **PlaceholderAPI**, you must install [ChatInjector](https://www.spigotmc.org/resources/38327) in order for the placeholders to show up in the chat. However, please note it has been reported that ChatInjector might cause issues.

## PlotSquared placeholders

{% hint style="tip" %}
If you think a placeholder for PlotSquared should be added, then please [raise an issue here](https://github.com/IntellectualSites/PlotSquared/issues/new/choose).
{% endhint %}

_Available placeholders in 6.0.0 onwards:_

| Placeholder                                      | Description                                                                                                         |
|--------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| `%plotsquared_currentplot_alias%`                | Alias of the plot                                                                                                   |
| `%plotsquared_currentplot_owner%`                | Owner of the plot                                                                                                   |
| `%plotsquared_currentplot_members%`              | Amount of players added and trusted to the plot                                                                     |
| `%plotsquared_currentplot_members_added%`        | Amount of players added to the plot                                                                                 |
| `%plotsquared_currentplot_members_added_list%`   | Display a list of added members                                                                                     |
| `%plotsquared_currentplot_members_trusted%`      | Amount of players trusted to the plot                                                                               |
| `%plotsquared_currentplot_members_trusted_list%` | Display a list of trusted members                                                                                   |
| `%plotsquared_currentplot_members_denied%`       | Amount of members denied from the plot                                                                              |
| `%plotsquared_currentplot_members_denied_list%`  | Display a list of denied members                                                                                    |
| `%plotsquared_currentplot_world_name%`           | Get the world name                                                                                                  |
| `%plotsquared_currentplot_can_build%`            | Displays true or false whether the player has build rights on the plot                                              |
| `%plotsquared_world_name%`                       | Get the name of the world                                                                                           |
| `%plotsquared_has_plot%`                         | Displays true or false whether the player has plot                                                                  |
| `%plotsquared_has_plot_(world)%`                 | Displays true or false whether the player has plot in a specific world                                              |
| `%plotsquared_plot_count%`                       | Amount of global plots of a player                                                                                  |
| `%plotsquared_plot_count_(world)%`               | Amount of plots for a player in a specific world                                                                    |
| `%plotsquared_base_plot_count%`                  | Amount of global plots of a player, counting merged plots as one                                                    |
| `%plotsquared_base_plot_count_(world)%`          | Amount of plots for a player in a specific world, counting merged plots as one                                      |
| `%plotsquared_allowed_plot_count%`               | Amount of maximum plots a player can have. Returns "infinite" if you have * permission                              |
| `%plotsquared_currentplot_xy%`                   | Displays the X and Y ID of a plot                                                                                   |
| `%plotsquared_currentplot_x%`                    | Displays the X ID of a plot                                                                                         |
| `%plotsquared_currentplot_y%`                    | Displays the Y ID of a plot                                                                                         |
| `%plotsquared_currentplot_rating%`               | Displays the average rating of a plot                                                                               |
| `%plotsquared_currentplot_biome%`                | Displays the biome of a plot                                                                                        |
| `%plotsquared_currentplot_size%`                 | Displays the size of a merged plot                                                                                  |
| `%plotsquared_currentplot_localflag_<flag>%`     | Display the value of the flag set on current plot                                                                   |
| `%plotsquared_currentplot_flag_<flag>%`          | Display the value of the flag set on current plot or if it's not set: display the inherited flag value (worlds.yml) |
| `%plotsquared_currentplot_creationdate%`         | Display the creation date of the plot                                                                               |

## External placeholders

- [PlaceholderAPI placeholders](https://github.com/PlaceholderAPI/PlaceholderAPI/wiki/Placeholders)

- [MVdWPlaceholderAPI placeholders](https://www.spigotmc.org/wiki/mvdw-placeholders)
