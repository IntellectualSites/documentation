# Plot analysis

## Introduction

Plot analysis is used to better determine the quality of plots specifically for plot clearing. It can be configured manually, or calibrated based on existing plot ratings.

It is part of the plot expiry system, and is optional check on top of clearing plots older than a set number of days.

## Why is this better than the previous blocks modified?

The number of changed blocks is not an accurate way to gauge the quality of the plot. Players could spam blocks, or in the case of worldedit, set the plot to a blob of stone. Using plot analysis, it correlates 10 different metrics to plot quality and hopefully be a better determination of quality builds without having to manually look at each one.

## How do I manually calibrate plot analysis?

_Please note that there is also auto calibration (see below)_

In the `settings.yml` there is a section for auto clearing:

```yaml
clear:
  auto:
    # If auto clearing is enabled
    enabled: true

    # If the threshold is set to -1, all plots will be cleared
    # Otherwise, any expired plot less than this threshold will be cleared
    threshold: -1

    # This section can be auto calibrated, or done yourself
    calibration:
      changes_sd: 64 # The Standard Deviation of the changes per column
      variety_sd: 1  # The Standard Deviation of the variety of Materials per column
      faces_sd: 32   # The Standard Deviation of the number of block faces showing per column
      air: 0         # The mean of the amount of air per column
      faces: 2       # The mean of the number of block faces showing per column
      changes: 1     # The mean of the changes per column
      data_sd: 1     # The Standard Deviation of the variety of the "BlockData" per column
      variety: 1     # The mean of the variety of Materials per column
      air_sd: 0      # The Standard Deviation of the variety of the amount of air per column
      data: 32       # The mean of the variety of "BlockData" per column

    # The interval at which plots are cleared (lower is faster)
    clear-interval-seconds: 10

    # Any plot older than this will be checked and possibly cleared
    days: 7
```

If you only want to clear plots based on the number of changes, set all the metrics to 0 except "changes". Then set the complexity accordingly. The changes metrics is 100 * average per column.

*What is a column?*
A column is the entire vertical space for a block. e.g. If you are standing on a block, the column is that block and everything directly above and below it. Each column can contain at most 256 blocks (as it's 256 blocks tall).

If you want for instance to clear any plot that had less than 7 blocks changed per column, you would do the following:

{% hint style="info" %}
**Note** that 7 -> 700 for the threshold and is the same for each calibration parameter
{% endhint %}

```yaml
clear:
  auto:
    # Please note how the threshold is set to 100 * 7 or 700
    threshold: 700

    # This section has be calibrated to only care about blocks changed
    calibration:
      changes_sd: 0
      variety_sd: 0
      faces_sd: 0
      air: 0
      faces: 0
      changes: 1
      data_sd: 0
      variety: 0
      air_sd: 0
      data: 0

    # Set these to whatever you want
    enabled: true
    clear-interval-seconds: 10
    days: 7
```

## How do I auto calibrate plot analysis?

Plot analysis can be auto calibrated based on plot ratings. The more ratings you have, the more accurate the calibration will be.

**To rate plots use:**
`/plot rate next` - To teleport to the next ratable plot (this is skewed so that low quality plots receive less ratings)  +
`/plot rate <value>` - To rate the plots

The best way to get good data is to just encourage players on the server to rate as many plots as they can - you can always recalibrate.

**To calibrate use:**
`/plot debugexec calibrate-analysis <percentage>`  +
The percentage is what (rough) percent of old plots you would like to have cleared. If you just want to get rid of some really low quality plots e.g. 7% of plots use:   +
`/plot debugexec calibrate-analysis 7`

To view the current complexity of the plot you are in use `/plot debugexec analyze` - then the same command to view the analysis.

**To recalibrate:**
It is best to clear the current analysis so plots can be re-analyzed:  +
(optional) `/plot debugexec remove-flag analysis`  +
(required) `/plot debugexec calibrate-analysis <percentage>`
