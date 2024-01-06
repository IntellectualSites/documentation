# API Documentation

## Maven & Gradle Examples

* Javadocs: [intellectualsites.github.io/plotsquared-javadocs](https://intellectualsites.github.io/plotsquared-javadocs)
* Major upgrade diff: [intellectualsites.github.io/plotsquared-api-diff](https://intellectualsites.github.io/plotsquared-diff/)

{% hint style="tip" %}
Gradle is the recommended when working with the PlotSquared API. Ensure the [toolchain](https://docs.gradle.org/current/userguide/toolchains.html) points to Java 17 or higher.
{% endhint %}

{% hint style="info" %}
If you are looking for snapshots, add the repository of S01 OSS Sonatype (`https://s01.oss.sonatype.org/`) to the repositories' block.
{% endhint %}

### Gradle - PlotSquared Core

If you need to access the Bukkit module of PlotSquared, copy the example below.

```kotlin
repositories {
    mavenCentral()
    maven { url = uri("https://repo.papermc.io/repository/maven-public/") }
}

dependencies {
    implementation(platform("com.intellectualsites.bom:bom-newest:1.40"))
    compileOnly("com.intellectualsites.plotsquared:plotsquared-core")
}
```

### Gradle - PlotSquared Core and Bukkit

```kotlin
repositories {
    mavenCentral()
    maven { url = uri("https://repo.papermc.io/repository/maven-public/") }
}

dependencies {
    implementation(platform("com.intellectualsites.bom:bom-newest:1.40"))
    compileOnly("com.intellectualsites.plotsquared:plotsquared-core")
    compileOnly("com.intellectualsites.plotsquared:plotsquared-bukkit") { isTransitive = false }
}
```

### Maven - PlotSquared Core

```xml
<repositories>
    <repository>
        <id>papermc</id>
        <url>https://repo.papermc.io/repository/maven-public/</url>
    </repository>
</repositories>
<dependencyManagement>
    <dependencies>
        <dependency>
            <groupId>com.intellectualsites.bom</groupId>
            <artifactId>bom-newest</artifactId>
            <version>1.40</version>
            <scope>import</scope>
            <type>pom</type>
        </dependency>
    </dependencies>
</dependencyManagement>
<dependencies>
    <dependency>
        <groupId>com.intellectualsites.plotsquared</groupId>
        <artifactId>plotsquared-core</artifactId>
        <scope>provided</scope>
    </dependency>
</dependencies>
```

### Maven - PlotSquared Core and Bukkit

```xml
<repositories>
    <repository>
        <id>papermc</id>
        <url>https://repo.papermc.io/repository/maven-public/</url>
    </repository>
</repositories>
<dependencyManagement>
    <dependencies>
        <dependency>
            <groupId>com.intellectualsites.bom</groupId>
            <artifactId>bom-newest</artifactId>
            <version>1.40</version>
            <scope>import</scope>
            <type>pom</type>
        </dependency>
    </dependencies>
</dependencyManagement>
<dependencies>
<dependency>
    <groupId>com.intellectualsites.plotsquared</groupId>
    <artifactId>plotsquared-core</artifactId>
    <scope>provided</scope>
</dependency>

<dependency>
    <groupId>com.intellectualsites.plotsquared</groupId>
    <artifactId>plotsquared-bukkit</artifactId>
    <scope>provided</scope>
    <exclusions>
        <exclusion>
            <artifactId>plotsquared-core</artifactId>
            <groupId>*</groupId>
        </exclusion>
    </exclusions>
</dependency>
</dependencies>
```

### Useful classes for PlotSquared

* [PlotAPI](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/PlotAPI.java)
* [PlotPlayer](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/player/PlotPlayer.java)
* [FlagContainer](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/plot/flag/FlagContainer.java)
* [SchematicHandler](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/util/SchematicHandler.java)
* [ChunkManager](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/util/ChunkManager.java)
* [UUIDPipeline](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/uuid/UUIDPipeline.java)

## Tutorials

* [Getting an instance of PlotSquared](event-api.md#getting-an-instance)
* [Flag API](flag-api.md)
* [Event API](event-api.md)

{% hint style="tip" %}
If you have made a tutorial, or an addon for PlotSquared, and want us to link it here, please create an issue. We'd really appreciate it!
{% endhint %}

## Terminology

### Plot area

A plot area is any area that PlotSquared will manage/handle. If this is an infinite plot world, the entire world is considered to be a plot area. If you use plot clusters, then only part of the world will be a plot area, and anything outside this area will not be handled by PlotSquared.

See: [PlotAreaManager.java](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/plot/world/PlotAreaManager.java)`#getPlotAreaByString(...)`

### Clusters

Clusters can be created within existing plot areas, or they can be created in a previously non-plot world, which will in turn create it's own plot area.

See: [PlotCluster.java](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/plot/PlotCluster.java)
See: [PlotSquared.java](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/PlotSquared.java)

### Road

A road is what separates each plot, and includes the wall around each plot. Attempting to get a plot at this location will return null.

See: [Location.java](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/location/Location.java)`#isPlotRoad(...)`

### Plot

A plot can be claimed or unclaimed. Getting a plot at a location where one isn't claimed will return a new unowned plot object.

See: [PlotArea.java](https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/plot/PlotArea.java)`#getPlots(...)`
