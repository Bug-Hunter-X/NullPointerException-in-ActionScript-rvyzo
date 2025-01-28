The solution involves adding a null check before accessing the property:

```actionscript
var myObject:Object = someFunctionThatMightReturnNull();
if (myObject != null) {
  var myValue:String = myObject.someProperty;
} else {
  // Handle the case where myObject is null
  var myValue:String = ""; // Or some other default value
}
```

Alternatively, you can use the nullish coalescing operator (`??`) for a more concise solution (available in ActionScript 3.0 and later):

```actionscript
var myObject:Object = someFunctionThatMightReturnNull();
var myValue:String = myObject?.someProperty ?? "";
```
This operator returns the right-hand operand if the left-hand operand is null or undefined; otherwise it returns the left-hand operand.