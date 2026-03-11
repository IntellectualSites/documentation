# Configuration

## Introduction

FAWE works well out of the box, but configuration settings in the Limits and Queue Operation sections may be used to fine tune FAWE for your server operation. Refer to the following discussions as well as the comments in the Default Configuration file shown below.

If you make setting changes and encounter problems with edit operations, return to the default setting values before additional finetuning attempts.  To reset the config.yml file, delete it and restart the server or reload FAWE using the `/fawe` command.

## Asynchronous Operation

WorldEdit by itself tries to finish each edit operation completely in memory before placing any blocks. WorldEdit also stores undo (history) blocks in memory, which increases memory requirements and with large edits, can cause the server to run out of memory and crash, or cause the edit to fail.

FAWE provides most of its speed improvements by running each edit operation in a separate asynchronous thread.  And it starts placing blocks in the world as soon as they are available rather than waiting for the operation to complete.  This lets the overall edit finish much faster. Also, since blocks are placed when available, they don't fill up memory.

FAWE may also be configured to store Undo (History) blocks on disk, which when used with the other improvements, enables FAWE to make unlimited sized edits with minimal impact.

## Limits Settings

These settings enable you to control the maximum WorldEdit block edit sizes for various groups of users. The `default` section applies to non-admin users who do not have limit bypass enabled. See *fawe.bypass* and *fawe.admin* permissions for more info.

You can also define limits for specific groups and enable them using a permission node. See comments in the default config file listing below.

## Queue Settings

Settings in this section enable you to fine tune the asynchronous queue operation to affect memory use and editing speed.

## Local Queues

FAWE runs each Edit command in a separate asynchronous thread from the main server thread, and queues blocks processed by the edit to a per player local queue.

Inside the queue, the blocks are ordered by chunks, which enables FAWE to use more efficient chunk optimized algorithms to finally place (dispatch) the blocks into the world. For example, WorldEdit used by itself, performs lighting, and physics, and sends packets, for each block being changed.  FAWE on the other hand, using its queue of blocks grouped by chunks, can use more efficient chunk algorithms to place the blocks in the world.

Local queues begin in the incomplete state when an edit starts. When simple `//set` or `//copy` type commands queue blocks, the blocks are ready to be placed.  When other commands (e.g. `//smooth` and `//deform`) edit blocks, the blocks changed depend on the position of other blocks in the world, and related blocks may be changed multiple times. (Typically, all localized changes are complete within 64 chunks worth of block changes.)

When the edit has finished, the local queue changes to the Complete state.

## Global Queues

FAWE uses a global queue to actually place blocks from all active local queue edits.  The global queue prioritizes on insertion order, so older local queues have their blocks placed first. Blocks on the global queue are placed in the world on the main server thread.

FAWE always places blocks from the Completed local queues first *AND* the list of completed local queues MUST be empty before blocks are placed from incomplete local queues.

The global queue links to local queues for edits in progress.  (Internally this is implemented as two queues -- one for the local queues that are completed, the other for local queues that are incomplete.)

## Efficiency Improvements

FAWE also tries to improve efficiency by placing blocks from Incomplete queues when there are no completed queues ready.

- *target-size*

FAWE uses *target-size* to regulate placing blocks from incomplete queues and to ensure that there is a reasonable likelihood that the blocks to be placed are stable and not likely to be changed again.

Some commands such as `//smooth` and `//deform` may not smooth or deform properly if they are dispatched while the command is still processing (though these usually don't modify anywhere near 64 chunks).  The blocks changed depend on the position of other blocks in the world, and related blocks may be changed multiple times.  In this case, the likelihood that any block will be re-modified falls off after around 64 chunks worth of blocks have been queued. This is not an issue with simple operations like `//copy` and `//set`, since those blocks are not changed multiple times.

The global queue will start processing available blocks from still in--process edits if there are no completed local queues waiting to be placed AND there are target--size or more in--process edit chunks queued.

This setting ensures that blocks from commands like `//smooth` and `//deform` are stable, and it also contributes to making sure that the global queue keeps placing available blocks rather than staying idle.

The default *target-size* value is 64.

Without *target-size*, running a huge edit with `/fastmode` would normally cause the incomplete queue to fill up faster than the *max-wait-ms* setting could empty it.

Reducing *target--size* may reduce performance for operations like `//smooth` and `//deform`, since time may be wasted re-changing blocks that have already been placed.  Also, since these commands depend on the position of other blocks, if the *target--size* is not large enough and blocks from incomplete queues are placed but may be changed later, the final result of blocks placed might be different from if the processing completed before any changes are placed. This would result in the commands not performing properly.   So having a large enough *target-size* will avoid this problem.

Increasing *target-size* is not helpful since most related changes occur in less than 64 chunks processing time. ALSO if set exceptionally large, it would reduce FAWE's ability to recover from exceptionally large edits that would potentially run the server out of memory.

- *max-wait-ms*

FAWE is most efficient when placing blocks from edits that have finished processing.  However, waiting till completion wastes time and fills memory, therefore, this setting is used to try to keep dispatching blocks from the global queue rather than letting it sit idle while edits haven't finished but blocks are available to place.

The global queue will start placing blocks from still-processing edits if there are no blocks from completed local queues waiting to be placed AND the global queue remains idle for *max--wait--ms* milliseconds or more.

The *max--wait--ms* setting also serves as a time--out for chunk load problems.  Chunks normally load in much less than a second, so the default *max--wait--ms* value of 1000 ms avoids having edits freeze on chunk load errors.

Increase it if chunks fail to load in time.
