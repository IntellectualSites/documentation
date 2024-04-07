# Filling a region using a pattern

## Foreword
First of all, patterns usually come from the core part of WorldEdit or FAWE. You can find all existing patterns [here](https://intellectualsites.github.io/fastasyncworldedit-javadocs/worldedit-core/com/sk89q/worldedit/function/pattern/Pattern.html)

## Chess Pattern example
Given are 3 things:
- Position1: X=300, y=-64, z=300
- Position2: X=600, y=128, z=600

{% hint style="danger" %}
**This code is Fawe specific and can not used in WorldEdit in this way**
{% endhint %}
```java
public void setChessArea(World world, BlockVector3 position1, BlockVector3 position 2) {
    // Here we must first adapt the world as in the WorldEdit example or translate it into the WorldEdit specialized object.
    World faweWorld = BukkitAdapter.adapt(world);

    //Now we define a square region using our 2 positions
    CuboidRegion cuboidRegion = new CuboidRegion(position1, position2);

    // Now we open an EditSession, which contains the complete process or information during an edit process in the world.
    // Through the try-and-catch-with-resources we let Java automatically close the resource EditSession after use
    try (EditSession editSession = WorldEdit.getInstance().newEditSession(faweWorld)) {
        // Here we create our biome pattern
        var pattern = new Linear3DBlockPattern(new Pattern[]{ BlockTypes.WHITE_WOOL, BlockTypes.BLACK_WOOL }, 2, 2, 2);

        //This sets the pattern to the region
        editSession.setBlocks((Region) cuboidRegion, pattern);
    }
}
// This code would be called by the plugin in the main thread
public void call() {
    // Here we set our position 1 and 2
    BlockVector3 position1 = BlockVector3.at(300, -64, 300);
    BlockVector3 position2 = BlockVector3.at(600, 128, 600);
    World bukkitWorld = Bukkit.getWorld("world");
    setChessArea(bukkitWorld, position1, position2);
}
```

### Result:

![api_chess_pattern.png](/fastasyncworldedit/images/api_chess_pattern.png)


## Biome Cuboid Example
Given are 3 things:
- Position1: X=300, y=-64, z=300
- Position2: X=600, y=128, z=600
- BiomeType: Badlands

```java
public void setBiomeArea(World world, BlockVector3 position1, BlockVector3 position 2) {
    // Here we must first adapt the world as in the WorldEdit example or translate it into the WorldEdit specialized object.
    World faweWorld = BukkitAdapter.adapt(world);

    //Now we define a square region using our 2 positions
    CuboidRegion cuboidRegion = new CuboidRegion(position1, position2);

    // Now we open an EditSession, which contains the complete process or information during an edit process in the world.
    // Through the try-and-catch-with-resources we let Java automatically close the resource EditSession after use
    try (EditSession editSession = WorldEdit.getInstance().newEditSession(faweWorld)) {
        // Here we create our biome pattern
        var pattern = new BiomeApplyingPattern(editSession, BiomeTypes.BADLANDS);

        //This sets the pattern to the region
        editSession.setBlocks((Region) cuboidRegion, pattern);
    }
}
// This code would be called by the plugin in the main thread
public void call() {
    // Here we set our position 1 and 2
    BlockVector3 position1 = BlockVector3.at(300, -64, 300);
    BlockVector3 position2 = BlockVector3.at(600, 128, 600);
    World bukkitWorld = Bukkit.getWorld("world");
    setBiomeArea(bukkitWorld, position1, position2);
}
```
_This code is still Fawe unspecific and can also be used in WorldEdit in this way_

### Let's set blocks async with FAWE

Now we run the code Async to let Fawe manage server resources:
```java
// Now we wrap our code in a runnable with a functional interface and have it executed by Bukkit's scheduler system
Runnable executeCode = () -> {
    // Here we set our position 1 and 2
    BlockVector3 position1 = BlockVector3.at(300, -64, 300);
    BlockVector3 position2 = BlockVector3.at(600, 128, 600);
    World bukkitWorld = Bukkit.getWorld("world");
    setBiomeArea(bukkitWorld, position1, position2);
};
Bukkit.getScheduler().runTaskAsynchronously(Bukkit.getPluginManager().getPlugin("YourPluginNameHere"), executeCode);
```
