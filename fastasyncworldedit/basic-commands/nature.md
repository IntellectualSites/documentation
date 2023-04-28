# Nature

## Drain

This command removes water from a spherical region (picture 1).

* You must choose a location which contains water to execute this command. This command will drain water from a sphere around you with the defined `radius` with the centre being your current position.
* Note that the command delete only the water in one resource: if you have another pool inside your radius, it will be ignored (picture 2).
* With the argument `-w` you can change the water-logged [block state](https://minecraft.gamepedia.com/Block_states) state of blocks to "false". For example, wooden slabs will be "dried" and no longer be water-logged (picture 3).
* With the argument `-p` all of plants which are in the water will be removed (picture 4).

The middle of the selection in the images below are marked by a yellow block.

### Usage
`//drain <radius> [-w] [-p]`

### Permission
`worldedit.drain`

### Visual Examples

![drain.png](https://i.imgur.com/wnjgiXJ.png)

![drain_ressource.png](https://i.imgur.com/YTGLAqx.png)

![drain-w.png](https://i.imgur.com/mf5arBW.png)

![drain-p.png](https://i.imgur.com/r1NAWsr.png)

## Fixwater

This command help to generate a water see around you. Additionally, you can fix and exist see (picture 1).

* You must choose a location which contains water to execute this command. This command will replace air with water from a half sphere around you with the defined `radius` with the center being your current position (picture 2).
* Similar to `//drain` this command will only execute for blocks in the same water pool or hole: if you have another water pool or hole inside your radius, it will be ignored (picture 3).

The middle of the selection in the images below are marked by a yellow block.

### Usage
`//fixwater <radius>`

###  Permission
`worldedit.fixwater`

### Visual Examples

![fixwater.png](https://i.imgur.com/eaFTnG0.png)

![fixwater-full.png](https://i.imgur.com/Krav8oA.png)

![fixwater_ressource.png](https://i.imgur.com/FBuYNm4.png)

## Fixlava

This command help to generate a lava see around you. Additionally, you can fix and exist see (picture 1).

* You must choose a location which contains lava to execute this command. This command will replace air with lava from a half sphere around you with the defined `radius` with the center being your current position (picture 2).
* Similar to `//drain` this command will only execute for blocks in the same lava pool or hole: if you have another lava pool or hole inside your radius, it will be ignored (picture 3).

The middle of the selection in the images below are marked by a yellow block.

### Usage
`//fixlava <radius>`

### Permission
`worldedit.fixlava`

### Visual Examples

![fixlava.png](https://i.imgur.com/wbA3QsB.png)

![fixlava-full.png](https://i.imgur.com/0zhsjLL.png)

![fixlava_ressource.png](https://i.imgur.com/zmaFyy7.png)

## Snow

With this command you generate snow around you (picture 1).

* The command will execute for a circle with the defined `radius` around you.
* The snow will only generate above the highest block in the X- & Z coordinate, so your Y-coordinate are not matter, and it’s easy to change a hilly or mountain region.
* The command will generate snow only above a free solid block. So this command don’t remove a grass-plant.

The middle of the selection in the images below are marked by a yellow block.

### Usage
`//snow [radius]`

### Permission
`worldedit.snow`

### Visual Examples

![snow.png](https://i.imgur.com/vsXCLVH.png)

## Thaw

With this command you melt snow around you (picture 1).

* The command will execute for a circle with the defined `radius` around you.
* The snow will only remove above the highest block in the X- & Z coordinate, so your Y-coordinate are not matter, and it’s easy to change a hilly or mountain region.

The middle of the selection in the images below are marked by a yellow block.

### Usage
`//thaw [radius]`

### Permission
`worldedit.thaw`

### Visual Examples

![thaw.png](https://i.imgur.com/Z5f3djS.png)
