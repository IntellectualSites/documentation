# API Flag Documentation

## Introduction

A plot flag is any property that can be assigned to a plot, that will alter its functionality in some way. Most of these are user assignable in-game, or via configuration files (for plot areas).

To create a new flag, simply extend PlotFlag, or one of the default types:

### Flag Types:
* [BlockTypeListFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/BlockTypeListFlag.html) (Holds WorldEdit BlockTypes)
* [BlockTypeWrapper](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/BlockTypeWrapper.html)
* [BooleanFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/BooleanFlag.html)
* [DoubleFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/DoubleFlag.html)
* [IntegerFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/IntegerFlag.html)
* [ListFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/ListFlag.html)
* [LongFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/LongFlag.html)
* [NonNegativeIntegerFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/NonNegativeIntegerFlag.html)
* [NumberFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/NumberFlag.html)
* [StringFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/StringFlag.html)
* [TimedFlag](https://intellectualsites.github.io/plotsquared-javadocs/core/com/plotsquared/core/plot/flag/types/TimedFlag.html)

Flags are essentially immutable value containers. The flag values must be able to be parsed from a string, and later on serialized into a string.

## Querying the state of a flag

If you want to know the current value of a flag on a plot, you can simply write

```java
boolean pvp = plot.getFlag(PvpFlag.class);
```

In this example, we're querying the state of the PvpFlag, which is a `BooleanFlag`, and the method directly returns the value we want to use afterwards.

## Creating a flag

Each flag contains one immutable value. The type of this value is supplied as a generic
parameter to the PlotFlag class, like such:

```java
import com.plotsquared.core.plot.flag.FlagParseException;
import com.plotsquared.core.plot.flag.PlotFlag;

public class YourFlag extends PlotFlag<YourValueType, YourFlag> {
// Your code
}
```

The flag may implement `com.plotsquared.core.plot.flag.InternalFlag`, in which case the flag won't be visible to the user. This allows you to store information that is associated with the plot, using the flag framework.

The PlotFlag constructor requires three parameters:

* The (non-null) immutable flag value
* A flag category
* A flag description

The category and description should be a TranslatableCaption `com.plotsquared.core.configuration.caption.TranslatableCaption`.
An instance of Caption can be created by using `com.plotsquared.core.configuration.caption.StaticCaption`.

Your flag constructor should look something like this:

```java
public YourFlag(final YourValueType value) {
  super(value, TranslatableCaption.of("flags.your_flag"), TranslatableCaption.of("flags.your_description"));
}
```

Your flag class needs to override the following methods:

* `YourFlag parse(@NotNull String input) throws FlagParseException`
* `YourFlag merge(@NotNull YourValueType newValue)`
* `String toString()`: Returns the string serialization of the current value.
* `String getExample()`: Returns an example argument.
* `YourFlag flagOf(@NotNull YourValueType value)`: Returns a new instance of your flag.

The `parse(String input)` method parses a string input, and returns a new flag instance.
If the input is not valid, `FlagParseException` is thrown. It should look something like:

```java
@Override
public YourFlag parse(@NotNull final String input) throws FlagParseException {
  if (isValid(input)) {
    YourValueType type = convertSomehow(input);
    return flagOf(type);
  }
  throw new FlagParseException(this, input, TranslatableCaption.of("flags.caption_message"));
}
```

The caption is created in the same way as for the constructor. There are some pre-made error captions in the message_en.json file, prefixed with `lags.flag_error_`. The FlagParseException takes in further parameters that will replace the placeholder values in the caption (`+<{value}>+`), if needed.

{% hint style="warning" %}
This method should *NEVER* return null. If the value cannot be parsed, throw an exception.
{% endhint %}

The merge method allows you to merge two different flag instances, which allows users to use the `/plot flag add <flag> <value>` command on the flag. If merging isn't supported, simply return `flagOf(newValue)`.

As the values are immutable, it is possible (and encouraged) to re-use flag instances.

For examples, see: https://github.com/IntellectualSites/PlotSquared/tree/v6/Core/src/main/java/com/plotsquared/core/plot/flag/implementations

## Registering a flag

All flags must be registered in the `GlobalFlagContainer`, or else they will not be usable in-game.
Each flag will be applied to every plot, so it is necessary to pick appropriate default flag values.

To register a flag, use:
`com.plotsquared.plot.flags.GlobalFlagContainer().getInstance().addFlag(flagInstance)`

## Adding a flag to a plot

To add a flag to a plot, use `plot.setFlag(flagInstance)`. If you need a new flag instance, and only have the flag type, it is possible to add a flag using `plot.addFlag(GlobalFlagContainer.getInstance().getFlag(flagInstance).createFlagInstance(flagValue))`
