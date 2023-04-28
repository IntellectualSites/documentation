# Brushes and Features in Development
{% hint style="info" %}
Some Brushes not included in current packages of VoxelSniper.
{% endhint %}



## Coast creation Brush
* **/b coast ecc[number] nb[number] sig[number] str[number]**: This brush is used for generating a coast line. The default parameters are ecc0.75 nb5 sg0.5 str10 .
    * **ecc[#]**: Eccentricity is how far out the random distortions of your brush can be generated. Units are multiples of the brush size. If you want to ensure overlap, use eccentricity less than 0.5.
    * **nb[#]**: How many 'blobs' your distorted brush will have. The more blobs you have will result in a smoother, more circular end shape.
    * **sig[#]**: Sets the hardness of the sigmoid curve. The parameter must be between 0 and 1. The closer to 0, you will have more sudden cliffs, while the closer to 1 it will be more gentle
    * **str[#]**: Number of blocks that will be attempted to be scraped off the terrain at the center of the brush

## Flatten Brush
* **/b f**: The flatten brush uses a cylinder to flatten everything inside the selected range. With this brush, you use /vh to determine how high the cylinder is and the brush size determines the radius.  
* **/b f f[#]**: This sets the brush falloff. The range of this argument must be between 0-1. This is set to 0.5 by default.
* **/b f s[#]**: This sets the brush falloff smoothness. This must also be between 0 and 1. By default, it is set to 0.5

## Spline Brush
* **/b sp**: This brush is used to create a spline. You can use either end points or control points to create your spline. To select these points, use the Gunpowder to select blocks, and use the arrow to remove them.
* **/b sp ss**: Enable endpoint selection mode for desired curve.
* **/b sp sc**: Enable control point selection mode for desired curve.
* **/b sp clear**: Clear out the curve selection.
* **/b sp ren**: Render curve from control points