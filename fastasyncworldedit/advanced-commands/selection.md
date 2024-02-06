## Introduction

In some cases you want to exclude regions because you don't want to edit them, 
for example when the unwanted part is inside another wanted part.
In this example we use the [wesui plugin of kennytv](https://www.spigotmc.org/resources/worldeditsui-visualize-your-selection.60726/) (is optional, but can help to understand each step) to visualize the selections.

{% hint style="info" %} This example is a cuboid selection with a y height of 1, you can use different selection types
and heights {% endhint %}

1. Select inner region with `//pos1` and `//pos2` or left and right-click interaction while holding the ``//wand``item.
![excludeRegionsGmask.png](..%2Fimages%2Fadvanced-commands%2FexcludeRegionsGmask.png)


2. Add a gmask containing your selection with `//gmask !#region`
![excludeRegionsGmask2.png](..%2Fimages%2Fadvanced-commands%2FexcludeRegionsGmask2.png)


3. Select outer region using the same commands as in ``1.`` (or outset/expand/move/wer etc.)
![excludeRegionsGmask3.png](..%2Fimages%2Fadvanced-commands%2FexcludeRegionsGmask3.png)


4. Run the command of your choice and the inner region will not be affected, in this example we used ``//set stone``
![excludeRegionsGmask4.png](..%2Fimages%2Fadvanced-commands%2FexcludeRegionsGmask4.png)