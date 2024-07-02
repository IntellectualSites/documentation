# ChestShop Compatibility

## Usage

The follow steps applies to the **SignShop plugin** and **any plugin which uses signs**:

1. Open your `/plugins/PlotSquared/settings/worlds.yml` file.
2. Find your plot world. (If you use ChestShop in more than one world then apply the following changes to all of those worlds)
3. Change the following from this:
```yaml
 flags: {}
```
to this:
```yaml
 flags:
   use: '#signs'
```
4. This will let players interact with all types and states of signs.
5. Then use `/plot reload`
