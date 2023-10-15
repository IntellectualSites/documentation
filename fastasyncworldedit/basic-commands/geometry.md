# Geometric

## Fill

This command generates a half circle with the defined `radius`.

* An example use-case for this command could be something like filling in a hole in the world (picture 1).
* Only air will be replaced by the block(s) defined with `pattern`.
* By default, the half circle has a `depth` of 1 block (picture 2). Once the depth defined has been reached the circle will be "cut".
* The maximum value for the `depth` is the radius (picture 3).
* The default `direction` is "down", but you can use always use the other direction options provided by FAWE (picture 4).

The middle of the selection in the images below are marked by a yellow block.

### Usage
`//fill <pattern> <radius> [depth] [direction]`

### Permission
`worldedit.fill`

### Visual Examples

1. ![fill_example.png](https://i.imgur.com/6WItisE.png)

2. ![fill.png](https://i.imgur.com/6EZs2B2.png)

3. ![fill_depth.png](https://i.imgur.com/EwP81Kg.png)

4. ![fill_direction.png](https://i.imgur.com/vvEzTvC.png)

## Removenear

This command removes all blocks with the defined `block` type in a cuboid region around you (picture 1).

* The `size` parameter defines the distance between your position (middle point) and the border.
* By default `size` is 50, so the command will be executed with a region in a 99 x 99 block cube.

The middle of the selection in the images below are marked by a yellow block.

### Usage
`//removenear <block> [size]`

### Permission
`worldedit.removenear`

### Visual Example

![removenear.png](https://i.imgur.com/riMmbhq.png)