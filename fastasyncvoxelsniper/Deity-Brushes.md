# Deity Brushes

{% hint style="info" %}
These brushes do not use Performers
{% endhint %}

## The Entity Brush
**/b en [EntityType]**: The Entity Brush allowes a user to snipe-spawn single or groups (defined by the brush size variable) of  entities from a safe distance. (Item, XPOrb, Painting, Arrow, Snowball, Fireball, SmallFireball, ThrownEnderpearl, EyeOfEnderSignal, ThrownExpBottle, PrimedTnt, FallingSand, Minecart, Boat, Creeper, Skeleton, Spider, Giant, Zombie, Slime, Ghast, PigZombie, Enderman, CaveSpider, Silverfish, Blaze, LavaSlime, EnderDragon, WitherBoss, Bat, Witch, Pig, Sheep, Cow, Chicken, Squid, Wolf, MushroomCow, SnowMan, Ozelot, VillagerGolem, Villager, EnderCrystal). *Thanks to xmlns for use of his Mob Class from SpawnMob.*

{% hint style="success" %}
After entering "/b en Sheep" and "/b 5", clicking the sniper will spawn 5 sheep at the snipe-point.
{% endhint %}

{% hint style="info" %}
You must have the animal or monster you wish to spawn enabled in Bukkit to be able to create it with VoxelSniper.
{% endhint %}

**/b en info**: Shows a full list of available entities.

## Entity Removal Brush

**/b er**: Removes all entities except itemframes and paintings within your brush size in chunks.

## The Heat Ray

**/b hr**: The Heat Ray Brush burns nearby blocks and cinders  others to a "burned" state by altering them to materials like  cobblestone, or obsidian. Try torching a village with it! The Heat Ray  Brush uses the brush size variable to widen or narrow it's beam.

* **/b hr oct[int]**: Octaves parameter for the noise generator.
* **/b hr amp[float]**: Amplitude parameter for the noise generator.
* **/b hr freq[float]**: Frequency parameter for the noise generator.

## The Lightning Brush
**/b light**: Lightning will strike the block sniped.

## VoxelLightning Mode
**/vs lightning**: Engages VoxelLightning mode. Each time you pull the trigger on your sniper, the block clicked will also be struck by lightning.

{% hint style="info" %}
Bear in mind your regular snipe action will be performed in ADDITION to the lighting strike. If all you want is lightning, use the lightning brush.
{% endhint %}

## The Meteor Brush
**/b meteor**: A ghast fireball is launched towards the block sniped. 
{% hint style="warning" %}
Can not be undone! Also, anti-grief plugins that block explosions may nerf this brush.
{% endhint %}

## The Weather Wizard

**/vs weather**: Clears all rain and snow in the next few seconds.

## The Warp-in-Style Brush

**/b w**: This brush will warp you to the block sniped using the  arrow. The gunpowder will create a lightning bolt at the sniped block,  as well: Amaze and astound your friends! 

## The Jockey Brush

**/b jockey** This brush allows you to sit on any other player or creature. Ride a slime, or just annoy the holy hell out of someone you wish would log off. Crotch + Face = FUN!
* **-i:[y|n]** - Enables (y) or disables (n) the inverse mode. The inverse modes lets your target sit on you.
* **-po:[y|n]** - Enables (y) or disables (n) the player-only mode. If the player-only mode is enabled, only other players can used as a target.
* **-s:[y|n]** - Enables (y) or disables (n) the stack mode. If enabled, stacks all entities above the player within the players brush size.

## Three-Point Circle Brush

**Missing Image**

Three-point circle brush example 

**/b tpc accurate|default|smooth** - Use the arrow brush to select three points, which form the corners of a triangle. Use the powder brush to have VoxelSniper place the circle that circumscribes that  triangle. Works at ANY angle, although some angles work better than  others.
* **accurate|default|smooth** - Toggles how picky this brush is about placing blocks.
    * *accurate* - Only those blocks which are as close to mathematically perfect as possible.
    * *default* - A balanced mode which is generally pretty accurate, but can still leave gaps at some odd angles.
    * *smooth* - The brush will place every block that could reasonably be expected to be part of the circle. Tends to make the discs thicker. May still miss a few blocks in some worst-case scenarios, but will get most of just about any circle.

{% hint style="info" %}
Only available in versions 5.155 and higher.
{% endhint %}

## Move Brush
The Move Brush will move a selection by a specified amount of blocks. (Max 5000000 blocks)
* **/b mv x[#] y[#] z[#]** - Specifies the amount and direction the selection will be moved. (X: positive number => east, Y: positive number => up, Z: positive number => south) 
* **/b mv reset** - Resets the amount and direction to 0

## Punish Brush

This brush has its own permission: **voxelsniper.punish**

The punish brush will apply a specific punishment to everybody in the brush size radius. 

**/b p [punishment]**

You can list all available punishments by typing: **/b p info**.

Some punishments accept an additional potion level parameter. This will basically define how "intensive" the effect is and the default is 10. This is specified with **/vc [level]**. You can also define the length in seconds with **/vh [duration]**.

## Sign Overwrite Brush

The sign overwrite brush overwrites the text of signs. **/b sio**

The arrow sets one/multiple sign/signs. The powder tool will read the text of the targeted sign into the internal buffer.

Available parameters: 

* **-1 [...]** - Sets the first text line of the internal buffer. (e.g. /b sio -1 This is text.)
* **-2 [...]** - Sets the second text line of the internal buffer. (e.g. /b sio -2 This is text.) 
* **-3 [...]** - Sets the third text line of the internal buffer. (e.g. /b sio -3 This is text.)
* **-4 [...]** - Sets the fourth text line of the internal buffer. (e.g. /b sio -4 This is text.)
* **-clear** - Clears the internal buffer by setting all lines to an empty string. (Alias: -c)
* **-multiple [on|off]** - Enables or disables the ranged mode. With ranged mode enabled all sings in a box (with x=z=2*brushSize+1 and y=2*voxelHeight+1) will be set.  Keep in mind that the maximum length of a sign line is 15.

## Extrude Brush

* **/b ex**: The extrude brush will pull or push blocks in a cylinder shape, using a disk-face as a base. The height it copies to is based on your /vh <height>, the radius of the disk-face base is  based on /b # and the blocks that are extruded are based on your /vl  settings. Clicking with the arrow will "push" inwards, clicking with the gunpowder will "pull" outwards, relative to the face clicked.
* **/b ex true**: Uses a true disk for extruding.
* **/b ex false**: Turns off the true disk (default).
* **/vl**: Determines which block types get extruded.

{% hint style="info" %}
/b ex /vh 5 /b 10 /vl 1 5 *left click with gunpowder*  This would extrude all stone and wood blocks in a 10 block disk radius outward, relative to the face clicked.
{% endhint %}

## Snow cone brush
**/b snow**: Great for making snowy mountain tops. This brush only works with the gun powder and you need to click a block of snow for it to generate.