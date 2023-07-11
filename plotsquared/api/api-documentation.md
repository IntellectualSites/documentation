# API Documentation

## Maven & Gradle Examples

* Javadocs: https://intellectualsites.github.io/plotsquared-javadocs/
* Major upgrade diff: https://intellectualsites.github.io/plotsquared-api-diff/

{% hint style="tip" %}
Gradle is the recommended when working with the PlotSquared API. Ensure the https://docs.gradle.org/current/userguide/toolchains.html[toolchain] points to Java 17 or higher.
{% endhint %}

{% hint style="info" %}
If you are looking for snapshots, add the repository of S01 OSS Sonatype (`https://s01.oss.sonatype.org/`) to the repositories' block.
{% endhint %}

### Gradle - PlotSquared Core

If you need to access the Bukkit module of PlotSquared, copy the example below.

[source, kotlin, subs="attributes"]
----
repositories {
    mavenCentral()
    maven { url = uri("https://repo.papermc.io/repository/maven-public/") }
}

dependencies {
    implementation(platform("com.intellectualsites.bom:bom-1.18.x:{bomVersion}"))
    compileOnly("com.plotsquared:PlotSquared-Core")
}
----

### Gradle - PlotSquared Core and Bukkit

[source, kotlin, subs="attributes"]
----
repositories {
    mavenCentral()
    maven { url = uri("https://repo.papermc.io/repository/maven-public/") }
}

dependencies {
    implementation(platform("com.intellectualsites.bom:bom-1.18.x:{bomVersion}"))
    compileOnly("com.plotsquared:PlotSquared-Core")
    compileOnly("com.plotsquared:PlotSquared-Bukkit") { isTransitive = false }
}
----

### Maven - PlotSquared Core

[source, xml, subs="attributes, verbatim"]
----
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
            <artifactId>bom-1.18.x</artifactId>
            <version>{bomVersion}</version>
            <scope>import</scope>
            <type>pom</type>
        </dependency>
    </dependencies>
</dependencyManagement>
<dependencies>
    <dependency>
        <groupId>com.plotsquared</groupId>
        <artifactId>PlotSquared-Core</artifactId>
        <scope>provided</scope>
    </dependency>
</dependencies>
----

### Maven - PlotSquared Core and Bukkit

[source, xml, subs="attributes, verbatim"]
----
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
            <artifactId>bom-1.18.x</artifactId>
            <version>{bomVersion}</version>
            <scope>import</scope>
            <type>pom</type>
        </dependency>
    </dependencies>
</dependencyManagement>
<dependencies>
    <dependency>
        <groupId>com.plotsquared</groupId>
        <artifactId>PlotSquared-Core</artifactId>
        <scope>provided</scope>
    </dependency>

    <dependency>
        <groupId>com.plotsquared</groupId>
        <artifactId>PlotSquared-Bukkit</artifactId>
        <scope>provided</scope>
        <exclusions>
            <exclusion>
                <artifactId>PlotSquared-Core</artifactId>
                <groupId>*</groupId>
            </exclusion>
        </exclusions>
    </dependency>
</dependencies>
----

### Useful classes for PlotSquared

* https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/PlotAPI.java[PlotAPI]
* https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/player/PlotPlayer.java[PlotPlayer]
* https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/plot/flag/FlagContainer.java[FlagContainer]
* https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/util/SchematicHandler.java[SchematicHandler]
* https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/util/ChunkManager.java[ChunkManager]
* https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/uuid/UUIDPipeline.java[UUIDPipeline]

## Tutorials

* [Getting an instance of PlotSquared](event-api.md#_getting_an_instance)
* [Flag API](flag-api.md)
* [Event API](event-api.md)

{% hint style="tip" %}
If you have made a tutorial, or an addon for PlotSquared, and want us to link it here, please create an issue. We'd really appreciate it!
{% endhint %}

## Terminology

### Plot area

A plot area is any area that PlotSquared will manage/handle. If this is an infinite plot world, the entire world is considered to be a plot area. If you use plot clusters, then only part of the world will be a plot area, and anything outside this area will not be handled by PlotSquared.

See: https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/plot/world/PlotAreaManager.java[PlotAreaManager.java]#getPlotAreaByString(...)

### Clusters

Clusters can be created within existing plot areas, or they can be created in a previously non-plot world, which will in turn create it's own plot area.

See: https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/plot/PlotCluster.java[PlotCluster.java]
See: https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/PlotSquared.java[PlotSquared.java]

### Road

A road is what separates each plot, and includes the wall around each plot. Attempting to get a plot at this location will return null.

See: https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/location/Location.java[Location.java]#isPlotRoad(...)

### Plot

A plot can be claimed or unclaimed. Getting a plot at a location where one isn't claimed will return a new unowned plot object.

See: https://github.com/IntellectualSites/PlotSquared/blob/v6/Core/src/main/java/com/plotsquared/core/plot/PlotArea.java[PlotArea.java]#getPlots(...)
