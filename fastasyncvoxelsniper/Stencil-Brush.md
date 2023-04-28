# Stencil Brush

Stencil works similarly to schematics, you select an area, save it and later load it and paste it. The max cuboid size for Stencil is 100k  blocks.

* **/b st**: Shows in-game help.
* **/b st [fill|full|replace] [name]**: Selects the paste method for stencil and the stencil to be pasted. If no paste method is given, it defaults to fill. To make a new stencil, type /b st [name] and select a cuboid with first two arrow right clicks, third arrow right click will select paste point. Right click with gunpowder to paste.
    * *fill: Paste only into air blocks.*
    * *full: Paste into all blocks.*
    * *replace: Paste only into existing blocks.*

## StencilList Brush

StencilList brush takes existing stencils and pastes them in a random order. This can be useful for example pasting a set of trees. To create a StencilList, navigate to **plugins\VoxelSniper\stencilLists\** and create a .txt file, the name of this file is the same as your stencilList name. The contents of the file is each stencil name on their own line.

To load a stencilList, you type **/b sl [name]**. Now when you right-click with your arrow, it pastes randomly one of the stencils defined in the file.