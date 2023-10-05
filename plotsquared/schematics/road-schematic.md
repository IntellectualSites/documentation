# Plotworld Road Schematic

## Introduction

PlotSquared allows to customize **the road between the plots** with predefined schematics.

{% hint style="tip" %}
The road-schematics only affect the road of the plotworld. Not the plot itself. For instructions on how to set up plot-schematics, see the articles [Plot Schematic on Generation](../schematics/schematic-generation.md) and [Plot Schematic on Claim](../schematics/schematic-on-claim.md).
{% endhint %}

{% hint style="info" %}
Road schematics can be added after world generation. You are able to change the road schematic whenever you want. However, this will only affect [newly generation regions](#4-world-regeneration) and does not change previously generated regions.
{% endhint %}

## Setup

### 1. Road Schematic Construction 

First, you want to build a road surrounding your plot. The road includes the walls, the plot border and the full intersection. Therefore, you have to build over the intersections as well, we recommend going 3 or 4 blocks ahead.

PlotSquared does only take two sides of the road into consideration when doing the road creation, because, you likely already figured, roads are squares too around the square plots. Mathematical wise you only need to know 1 side's dimension to construct a square, however, PlotSquared takes up to two sides into consideration allowing you up to two different patterns.

{% hint style="info" %}
Currently, you need a symmetrical border construction for the schematic. Otherwise, you get construction mistakes.
{% endhint %}

Here is a preview of the parts of a road schematic you have to create. The pink parts are just a recommendation, but the past has shown us that it's good to add them before creating the road schematic:

![Road schematic](https://i.imgur.com/ISPEJPC.png)

### 2. Save the Schematic

Once you have created the road, stand in the plot and execute the following command:

`/plot createroadschematic`

Road schematics are stored in `plugins/PlotSquared/schematics/GEN_ROAD_SCHEMATIC/<worldname>`. Once the road schematic has been created it can be **copied** to a new `worldname` folder in this directory, providing the schematic for generating a new world.

### 3. Testing

To test the schematic (recommended), stand in another plot that was not used to create the schematic. The following will regenerate the road for the plot you are standing in:

`/plot debugroadregen plot`

### 4. World Regeneration

#### Via Command

If all is well, you can begin regenerating the roads in the entire map. Open up your console and execute the following command (this may take a while and may cause lag spikes):

`/plot regenallroads <world> [height]`

The height option, if specified, changes the amount of air to paste above the schematic.

#### Via World Reset

**Another way:** You stop the server and delete the world-chunks. With the restart, the new generated chunks follow your plotworld setup.