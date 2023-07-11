# Schematic generation

## Introduction

PlotSquared allow to generate a plotworld with a custom schematic in all plots.

**Example:**

![image](https://user-images.githubusercontent.com/4140635/121788898-9d254180-cbd1-11eb-9889-d688634f9f90.png)

## Setup

In order to have a plot world generate with schematics do the following:

1. Create a plot schematic with `/plot schematic save`
2. Move the created schematic from `/plugins/PlotSquared/schematics/` to `/plugins/PlotSquared/schematics/GEN_ROAD_SCHEMATIC/<world name>/` and rename it to `plot.schematic`/`plot.schem` (depending on the file extension of the schematic file you're moving)
3. In `settings.yml`, add/update the following:

```yaml
# Schematic Settings
schematics:
  # Whether schematic based generation should paste schematic on top of plots, or from Y=1
  paste-on-top: false
```

The world will now generate using the schematic.
