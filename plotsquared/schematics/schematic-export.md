# Schematic export

## Step 1: Choosing a directory

The following is the line which corresponds to the schematic export directory. An absolute path is required for the `save_path` node.
For example: `C:/xampp/htdocs/schematics/` or `C:/wamp/www/schematics` or `C:/minecraft/plugins/PlotSquared/schematics` .

```yaml
schematics:
  save_path: /var/www/schematics
```

## Step 2: Exporting a schematic

Use the command `/plot schematic save` while standing in a plot to save the plot to a schematic. To export all plots use `/plot schematic exportall` (from console).
