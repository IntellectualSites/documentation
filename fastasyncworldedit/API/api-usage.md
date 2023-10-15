# API Usage

## Maven & Gradle Examples

JavaDocs: [https://intellectualsites.github.io/fastasyncworldedit-javadocs/](https://intellectualsites.github.io/fastasyncworldedit-javadocs/ )

The WorldEdit documentation widely applies to FAWE too, you can find it here: [https://worldedit.enginehub.org/en/latest/api/index.html](https://worldedit.enginehub.org/en/latest/api/index.html)

We suggest that FAWE operations are completed asynchronously. Using FAWE API from the main thread is likely to block the main thread if FAWE is used correctly. `Operations#complete` (and the other `Operations` methods) are blocking, as is `EditSession#close` so anything you want to happen after an edit, place after closing the EditSession with close(), try-with-resources, etc. Always ensure EditSessions are closed before doing anything else, and that you do not reuse EditSessions else changes may not necessarily be flushed to the world.

{% hint style="info" %}
The API requires using Java 17 at development time. Make sure to point your toolchain to Java 17.
{% endhint %}

If you are looking for snapshots, add the repository of S01 OSS Sonatype to the repositories' block.

### Gradle - FAWE Core


```kt
repositories {
    mavenCentral()
    maven { url = uri("https://repo.papermc.io/repository/maven-public/") }
}

dependencies {
    implementation(platform("com.intellectualsites.bom:bom-newest:1.35")) // Ref: https://github.com/IntellectualSites/bom 
    compileOnly("com.fastasyncworldedit:FastAsyncWorldEdit-Core")
}
```

### Gradle - FAWE Bukkit and Core

```kt
repositories {
    mavenCentral()
    maven { url = uri("https://repo.papermc.io/repository/maven-public/") }
}

dependencies {
    implementation(platform("com.intellectualsites.bom:bom-newest:1.35")) // Ref: https://github.com/IntellectualSites/bom 
    compileOnly("com.fastasyncworldedit:FastAsyncWorldEdit-Core")
    compileOnly("com.fastasyncworldedit:FastAsyncWorldEdit-Bukkit") { isTransitive = false }
}
```

### Maven - Fawe Core

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
            <artifactId>bom-newest</artifactId> <!--  Ref: https://github.com/IntellectualSites/bom -->
            <version>1.35</version>
            <scope>import</scope>
            <type>pom</type>
        </dependency>
    </dependencies>
</dependencyManagement>
<dependency>
  <groupId>com.fastasyncworldedit</groupId>
  <artifactId>FastAsyncWorldEdit-Core</artifactId>
  <scope>provided</scope>
</dependency>
```

### Maven - FAWE Bukkit and Core


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
            <artifactId>bom-newest</artifactId> <!--  Ref: https://github.com/IntellectualSites/bom -->
            <version>1.35</version>
            <scope>import</scope>
            <type>pom</type>
        </dependency>
    </dependencies>
</dependencyManagement>
<dependencies>
    <dependency>
      <groupId>com.fastasyncworldedit</groupId>
      <artifactId>FastAsyncWorldEdit-Core</artifactId>
      <scope>provided</scope>
    </dependency>

    <dependency>
        <groupId>com.fastasyncworldedit</groupId>
        <artifactId>FastAsyncWorldEdit-Bukkit</artifactId>
        <scope>provided</scope>
        <exclusions>
            <exclusion>
                <artifactId>FastAsyncWorldEdit-Core</artifactId>
                <groupId>*</groupId>
            </exclusion>
        </exclusions>
    </dependency>
</dependencies>
```