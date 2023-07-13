# World reduction

With the following features you limit and reduce the size of your plotworld to save performance, memory and prevent an unattractive endless plotworld with many unused world space.

## World border

To prevent continued exploration, the world border can be enabled in each plotworld. The option can be found in the `worlds.yml` at `worlds.<world>.world.border`. The world border is based on the furthest plot from the origin `(0;0)` and will prevent chunks from being loaded outside this region.

If you already have plots which are far away from the origin, the world border will not be very effective. For this situation you can use the [Plot condensation](world-reduction.md#plot-condensation-intensive).

### Plot expiry

In the `settings.yml` look for the following section

```yaml
# Expiry will clear old or simplistic plots
enabled-components:
  plot-expiry: false
```

```yaml
# This is an auto clearing task called `task1`
auto-clear:
  task1:
    threshold: 1
    required-plots: -1
    confirmation: true
    days: 7
    worlds:
      - "*"
    # See: https://intellectualsites.github.io/plotsquared-documentation/optimization/plot-analysis
    calibration:
      variety: 0
      variety-sd: 0
      changes: 0
      changes-sd: 1
      faces: 0
      faces-sd: 0
      data-sd: 0
      air: 0
      air-sd: 0
      data: 0
```

To enable Expire Manager, set `enabled` to true, and set the expiry delay in days. This clears and deletes plots where the owner has been inactive (i.e. not logged on) for the amount of days specified.

For more **advanced plot clearing**, see the [plot analysis page](plot-analysis.md).

### Plot condensation (intensive)

The plot condensation (Added in 2.7.5) will move any exist plots outside a specified radius nearer to the origin `(0;0)`.

## Check the plot amount (optional)

To check how many plots are outside a radius: `/plot condense <world> info <radius>`. It will also display the minimum radius you can specify.

{% hint style="info" %}
If you already have thousands of plots outside your desired radius, it can take quite a long time.
{% endhint %}

## Run the condensation

To run the task use: `/plot condense <world> start <radius>`.

## World trim (intensive)

The world trim function will attempt to delete as many chunks which contain no plots. It will drastically reduce the size of the world on disk. It is an intensive task, so it is recommended to run it only every week or so.

To run the task use: `/plot trim <world>`.

## Chunk processor

The chunk processor will process chunks before they are saved / loaded from disk. It is lightweight at the moment with the following capabilities:

* Clear entities if a dangerous amount is detected
* Clear blockstates if a dangerous amount is detected

