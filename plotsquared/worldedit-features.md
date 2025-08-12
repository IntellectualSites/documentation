# WorldEdit & FAWE features

{% hint style="info" %}
If you want to make other aspects of WorldEdit async as well, you could consider installing [FastAsyncWorldEdit](https://www.spigotmc.org/resources/13932). You can find all the permissions to allow FAWE in plots [here](/fastasyncworldedit/basic-commands/main-commands-and-permissions.md).
{% endhint %}

PlotSquared offers several options related to WorldEdit. By default, it will do the following if you don't have the bypass permission:

* Restrict WorldEdit to plots
* Block access to potentially harmful WorldEdit commands
* Limits the max iterations with several brushes so people can't crash the server
* Limits the max volume to 50 million

The bypass permission is `plots.worldedit.bypass`. If you have this permission, you use the `/plot toggle worldedit` command to disable these restrictions.

To further extend these features, PlotSquared comes with a WE processor you can enable:

* Limits max block states and entities with editing (enable chunk-processor)
* Faster and async WorldEdit changes (enable experimental-fast-async-worldedit) (bypass this with `/plot toggle worldedit`)
