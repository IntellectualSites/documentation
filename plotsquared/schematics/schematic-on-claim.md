# Schematic on claim

## Setup

To have a schematic pasted on a plot when the plot is claimed you need to:

1. Build in a plot. If you want an external schematic, then use WorldEdit to paste it in the plot ([Tutorial](https://worldedit.enginehub.org/en/latest/usage/clipboard/#clipboard)).
2. Use `/plot schematic save` to save the schematic. You can find a list of saved schematics by using `/plot schematic list`

Now you have a working schematic file. To have it paste on claim you'll need to configure your `worlds.yml`, here is a simple snippet explaining how to do that.

```yaml
# The following is a slice from the plotworld settings, change this for each plotworld
schematic:
    # File name (without .schem)
        file:
           - "<schematic name>"
        # If you want it on claim
        on_claim: true
```

and in `settings.yml`, add/update the following:

```yaml
# Schematic Settings
schematics:
  # Whether schematic based generation should paste schematic on top of plots, or from Y=1
  paste-on-top: false
```

You can use the same schematic for more than one plotworld.

{% hint style="tip" %}
If you activated the `specify_on_claim` option in the worlds.yml the user can define a plot-schematic with the claim-command.
{% endhint %}