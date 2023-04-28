# Navigation

## Jumpto

With this command you teleport you to a specific position.

* You can manually define the position with the `[world,x,y,z]` option. Else, if undefined, the command will default the target block in your [crosshair](https://minecraft.gamepedia.com/File:HUD_example.png).
* To prevent a stuck you will teleport upstairs of the next solid block in the vertical with two free blocks in the hight for a place to stay (picture 1).

### Usage
`//jumpto [world,x,y,z]`

### Permission
`worldedit.navigation.jumpto.command`

### Visual Example

![jumpto-topblock.png](https://i.imgur.com/mbeJqzP.png)

## Unstuck

With this command you can escape from being stuck inside a block.

* Similar to `//jumpto`, you will teleport to the nearest solid block above (vertically) that also has two air blocks above it.

### Usage
`//unstuck`

### Permission
`worldedit.navigation.unstuck`

## Thru

With this command you pass through walls in your [crosshair](https://minecraft.gamepedia.com/File:HUD_example.png) direction (picture 1).

* For this command you have to standing before a wall. The maximum teleport distance are 6 blocks. Thus, the wall may be up to 5 blocks deep.

### Usage
`//thru`

### Permission
`worldedit.navigation.thru.command`

### Visual Example

![thru.png](https://i.imgur.com/SLtpfPv.png)

## Ascend

With this command you can teleport you up a specify `amount of floors` (picture 1).

* You will teleport upstairs of the next solid block in the vertical with two free blocks in the height for a place to stay.
* The distance between the floors are irrelevant.

### Usage
`//ascend [amount of floors]`

### Permission
`worldedit.navigation.ascend`

### Visual Example

![ascend.png](https://i.imgur.com/J15EzHi.png)

## Descend

With this command you can teleport down a specified `amount of floors` (picture 1).

* You will teleport downs to the next solid block in the vertical which has two air blocks above it.
* The distance between the floors are irrelevant.

### Usage
`//descend [amount of floors]`

### Permission
`worldedit.navigation.descend`

### Visual Example

![descend.png](https://i.imgur.com/xB5AD3f.png)

## Up

With this command you can teleport you upwards with your specify `distance`.

* By default, you will stand on a glass block to keep you still (picture 1).

### Usage
`//up <distance> [-f] [-g]`

### Permission
`worldedit.navigation.up`

### Visual Example

![up.png](https://i.imgur.com/9cbxPNP.png)

## Ceil

With this command you can teleport upwards above a ceiling.

* By default, you will stand on a glass block to keep you still (picture 1).
* With the `clearance` option you can specify a distance between your head and the ceiling. The default distance is 0, so you won’t have any clearance above your head.

### Usage
`//ceil [clearance] [-f] [-g]`

### Permission
`worldedit.navigation.ceiling`

### Visual Example

![ceil.png](https://i.imgur.com/Mk82aBk.png)
