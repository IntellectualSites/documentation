# Vanilla Tags

## What are "Tags?"

Tags are part of Vanilla Minecraft itself. For example, vanilla block tags are used for various block properties, vanilla item tags are used for various item properties, vanilla advancement files are used for various advancements, vanilla recipe files are used for various recipes, and vanilla entity type tags are used for various mob properties.

We decided to use these tags in our new flag system, this way you can easily set scopes of flags without having to add multiple values yourself.

Tags are used in flags that accept block types, but are prefixed with `#`. As an example, the command `/plot flag set use #signs` will add the sign category to the `use` flag. This is equivalent to adding every sign type to the flag.

A complete list of tags and the items contained in them, can be found in the [official wiki](https://minecraft.wiki/w/Tag#List_of_tags).
