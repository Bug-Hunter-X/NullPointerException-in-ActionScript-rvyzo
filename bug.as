The following ActionScript code attempts to access a property of an object before checking if the object itself is null:

```actionscript
var myObject:Object = someFunctionThatMightReturnNull();
var myValue:String = myObject.someProperty;
```

This will throw a `NullPointerException` if `someFunctionThatMightReturnNull()` returns `null`. 