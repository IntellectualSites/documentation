# UUID conversion

## Introduction
This was added in version 2.10. UUID conversion allows you to switch between different methods of UUID storage on your server.

### Offline - Mode

Will use the same UUID as an offline-mode server. The UUID will be based on the playername (case-sensitive).

### Lower - Mode

Offline mode but case-insensitive, as it gets the UUID from the lowercase username.

### Online - Mode

Use online-mode UUID provided by Mojang.

{% hint style="danger" %}
This mode will not work properly if you are using a pre-UUID version of Bukkit, or your server is set to offline mode. Please check your `server.properties` to be secure.
{% endhint %}

{% hint style="info" %}
If you use a proxy server (e.g. BungeeCord or Waterfall) follow this documentation to forward the player-UUID. Then the PlotSquared Online-UUID-Mode works also fine.
{% endhint %}

## Usage

A command is required to be executed in order to convert.

{% hint style="danger" %}
You are strongly advised to backup your database before a conversion. Plots may be lost if something goes wrong!
{% endhint %}

`/plot uuidconvert <mode>`
