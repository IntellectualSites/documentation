# Chunk processor

## Introduction

{% hint style="danger" %}
This is a new feature, not a magical solution to all your problems.
It is however very efficient, and will hardly leave a footprint when there are no chunks to process.
{% endhint %}

The chunk processor will process chunks before they are saved / loaded from disk. It is lightweight at the moment with the **following capabilities**:

* Clear entities if a dangerous amount is detected
* Clear blockstates if a dangerous amount is detected

## Purpose
The **purpose** of the processor is to:

* Decrease server lag
* Prevent potentially dangerous chunks being saved / loaded from disk
* Prevent repeated server crashes from dangerous chunks

The usual **causes of dangerous chunks** are:

* People abusing WorldEdit
* People abusing VoxelSniper
* Any other server-tool you have that can be used to spam entites / blocks

## Configuration

Configuration is done through the `settings.yml`

To enable the chunk processor, set the following:

```yaml
enabled-components:
  # Processes chunks (trimming, or entity/tile limits)
  chunk-processor: true
```

It can then be configured further, changing these values:

```yaml
chunk-processor:
  # Auto trim will not save chunks which aren't claimed
  auto-trim: false
  # Max tile entities per chunk
  max-tiles: 3
  # Max entities per chunk
  max-entities: 512
  # Disable block physics
  disable-physics: false
```

If the tile entity / entity limit has been reached, the chunk processor will remove the entities that exceed the limit when the chunk is saved. It will also prevent players that don't have `/plot toggle worldedit` enabled from exceeding the limit using WorldEdit.

When the chunk processor is activated, players will not be able to use tile entities as a part of the plot components when using `/plot set`.

{% hint style="tip" %}
If using Paper, you may also enable `tile-entity-check` under the paper components. This will prevent players from placing new tile entities when the tile entity limit has been reached in that particular chunk.
{% endhint %}

For more information about tile entities see:
https://papermc.io/javadocs/paper/1.18/org/bukkit/block/package-tree.html +
(Or do a google search.)
