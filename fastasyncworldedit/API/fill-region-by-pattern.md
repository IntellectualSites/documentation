# Filling a region using a pattern

## Foreword
First of all, patterns usually come from the core part of Worleedit or FAWE. The patterns can be found in the following path: [worldedit-core/src/main/java/com/fastasyncworldedit/core/function/pattern](https://intellectualsites.github.io/fastasyncworldedit-javadocs/worldedit-core/com/fastasyncworldedit/core/extension/factory/parser/pattern/package-summary.html)

_The link refers you to the JavaDocs with the correct package_

In this example, we only refer to one pattern for the time being.

## Biome Cuboid Example
Given are 3 things:
- Position1: X=300, y=-64, z=300
- Position2: X=600, y=128, z=600
- BiomeType: Badlands

```java
// Here we must first adapt the world as in the WorldEdit example or translate it into the WorldEdit specialized object.
World faweWorld = BukkitAdapter.adapt(world);  

// Here we set our position 1 and 2
BlockVector3 position1 = BlockVector3.at(300,-64,300);
BlockVector3 position2 = BlockVector3.at(600,128,600);

//Now we define a square region using our 2 positions
CuboidRegion cuboidRegion = new CuboidRegion(position1, position2);

// Now we open an EditSession, which contains the complete process or information during an edit process in the world. Through the try-and-catch-with-resources we let Java automatically close the resource EditSession after use
try (EditSession editSession = WorldEdit.getInstance().newEditSession(faweWorld)) {
    // Here we create our biome pattern
    var pattern = new BiomeApplyingPattern(editSession, BiomeTypes.BADLANDS);
    
    //This sets the pattern to the region
    editSession.setBlocks((Region) cuboidRegion, pattern);
}
```
_This code is still Fawe unspecific and can also be used in WorldEdit in this way_

### Let's set blocks async with FAWE
{% hint style="info" %}
**Recommended**

If no plug-in instance is available, you can also use the Task Manger. See below
{% endhint %}
Now we run the code Async to let Fawe manage server resources:
```java
// Now we wrap our code in a runnable with a functional interface and have it executed by Bukkit's scheduler system
Runnable executeCode = () -> {
    // Now we open an EditSession, which contains the complete process or information during an edit process in the world. Through the try-and-catch-with-resources we let Java automatically close the resource EditSession after use
    try (EditSession editSession = WorldEdit.getInstance().newEditSession(faweWorld)) {
        // Here we create our biome pattern
        var pattern = new BiomeApplyingPattern(editSession, BiomeTypes.BADLANDS);
    
        //This sets the pattern to the region
        editSession.setBlocks((Region) cuboidRegion, pattern);
    }
};
Bukkit.getScheduler().runTask(Bukkit.getPluginManager().getPlugin("YourPluginNameHere"), executeCode);
```

---

We can also use the TaskManger from Fawe. To do this, we only need to replace a call.


```java
// Now we wrap our code in a runnable with a functional interface and have it executed by Bukkit's scheduler system
Runnable executeCode = () -> {
    // Now we open an EditSession, which contains the complete process or information during an edit process in the world. Through the try-and-catch-with-resources we let Java automatically close the resource EditSession after use
    try (EditSession editSession = WorldEdit.getInstance().newEditSession(faweWorld)) {
        // Here we create our biome pattern
        var pattern = new BiomeApplyingPattern(editSession, BiomeTypes.BADLANDS);
    
        //This sets the pattern to the region
        editSession.setBlocks((Region) cuboidRegion, pattern);
    }
};
TaskManager.taskManager().taskNow(executeCode, true); // The second parameter specifies whether it should run async or sync.
```
