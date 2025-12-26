# WorldEdit & FAWE features

{% hint style="info" %}
If you want to make other aspects of WorldEdit async as well, you could consider installing [FasAsyncWorldEdit](https://modrinth.com/plugin/fastasyncworldedit). All permissions to allow FAWE in plots, you can find [here](/fastasyncworldedit/basic-commands/main-commands-and-permissions.md).
{% endhint %}

PlotSquared offers several options related to WorldEdit. By default, it will do the following if you don't have the bypass permission:

* Restrict WorldEdit to plots
* Block access to potentially harmful WorldEdit commands
* Limits the max iterations with several brushes so people can't crash the server
* Limits the max volume to 50 million

The bypass permission is `plots.worldedit.bypass`, the use `/plot toggle worldedit`.

To further extend this, PlotSquared comes with a WE processor you can enable:

* Limits max block states and entities with editing (enable chunk-processor)
* Faster and async WorldEdit changes (enable experimental-fast-async-worldedit) (bypass this with `/plot toggle worldedit`)
