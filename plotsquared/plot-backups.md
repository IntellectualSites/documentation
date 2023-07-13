# Plot Backups

## Introduction

PlotSquared v5.11.0 introduced a new plot backup system. This allows you to create backups of your plots, which can be restored at a later point.

{% hint style="danger" %}
The system does (currently) not work for merged plots.
{% endhint %}

By default, the system will also create backups of the plot when certain potentially destructive actions are performed. These currently include:

* Clearing the plot
* Setting a plot component (floor, filling, etc)

The backup system currently only stores blocks inside the plot, and will not include things such as flags, settings, etc. The backup system uses plot schematics behind the scenes.

## Configuration

The settings can be found in PlotSquared's `settings.yml` file.

```yaml
# Backup related settings
backup:
  # Automatically backup plots when destructive commands are performed
  automatic-backups: false
  # Maximum amount of backups associated with a plot
  backup-limit: 3
  # Whether or not backups should be deleted when the plot is unclaimed
  delete-on-unclaim: true
```

## Commands

* /plot backup save
  * Create a backup of the plot you're in
  * Permission: `plots.backup.save` (and `plots.admin.backup.other` if you're not the plot owner)

* /plot backup list
    * List available plot backups +
  * Permission: `plots.backup.list` (and `plots.admin.backup.other` if you're not the plot owner)

* /plot backup load
    * Restore a plot from the specified backup. +
  * Permission: `plots.backup.load` (and `plots.admin.backup.other` if you're not the plot owner)
