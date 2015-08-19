# BindingCollection

Represents the collection of all the binding objects that are part of the workbook.

## [Properties](#getter-examples)
| Property	   | Type	|Description
|:---------------|:--------|:----------|
|count|int|Returns the number of bindings in the collection. Read-only.|
|items|[Binding[]](binding.md)|A collection of binding objects. Read-only.|

## Relationships
None


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[getItem(id: string)](#getitemid-string)|[Binding](binding.md)|Gets a binding object by ID.|
|[getItemAt(index: number)](#getitematindex-number)|[Binding](binding.md)|Gets a binding object based on its position in the items array.|
|[load(param: object)](#loadparam-object)|void|Fills the proxy object created in JavaScript layer with property and object values specified in the parameter.|

## API Specification

### getItem(id: string)
Gets a binding object by ID.

#### Syntax
```js
bindingCollectionObject.getItem(id);
```

#### Parameters
| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Id of the binding object to be retrieved.|

#### Returns
[Binding](binding.md)

#### Examples

Create a table binding to monitor data changes in the table. When data is changed, the background color of the table will be changed to orange.

```js
function addEventHandler() {

    //Create Table1
    var ctx = new Excel.RequestContext();
    ctx.workbook.tables.add("Sheet1!A1:C4", true);
    ctx.executeAsync()
         .then(function () {
             console.log("My Diet Data Inserted!");
         })
         .catch(function (error) {
             console.log(JSON.stringify(error));
         });

    //Create a new table binding for Table1
    Office.context.document.bindings.addFromNamedItemAsync("Table1", Office.CoercionType.Table, { id: "myBinding" }, function (asyncResult) {
        if (asyncResult.status == "failed") {
            console.log("Action failed with error: " + asyncResult.error.message);
        }
        else {
            // If succeeded, then add event handler to the table binding.
            Office.select("bindings#myBinding").addHandlerAsync(Office.EventType.BindingDataChanged, onBindingDataChanged);
        }
    });
}

// when data in the table is changed, this event will be triggered.
function onBindingDataChanged(eventArgs) {
    var ctx = new Excel.RequestContext();
    // highlight the table in orange to indicate data has been changed.
    ctx.workbook.bindings.getItem(eventArgs.binding.id).getTable().getDataBodyRange().format.fill.color = "Orange";
    ctx.executeAsync()
        .then(function () {
            console.log("The value in this table got changed!");
        })
        .catch(function (error) {
            console.log(JSON.stringify(error));
        });
}

```


```js
var ctx = new Excel.RequestContext();
var lastPosition = ctx.workbook.bindings.count - 1;
var binding = ctx.workbook.bindings.getItemAt(lastPosition);
ctx.executeAsync().then(function () {
		Console.log(binding.type); 
});
```


[Back](#methods)

### getItemAt(index: number)
Gets a binding object based on its position in the items array.

#### Syntax
```js
bindingCollectionObject.getItemAt(index);
```

#### Parameters
| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|index|number|Index value of the object to be retrieved. Zero-indexed.|

#### Returns
[Binding](binding.md)

#### Examples
```js
var ctx = new Excel.RequestContext();
var lastPosition = ctx.workbook.bindings.count - 1;
var binding = ctx.workbook.bindings.getItemAt(lastPosition);
ctx.executeAsync().then(function () {
		Console.log(binding.type); 
});
```


[Back](#methods)

### load(param: object)
Fills the proxy object created in JavaScript layer with property and object values specified in the parameter.

#### Syntax
```js
object.load(param);
```

#### Parameters
| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|param|object|Optional. Accepts parameter and relationship names as delimited string or an array. Or, provide [loadOption](loadoption.md) object.|

#### Returns
void

#### Examples
```js

```

[Back](#methods)

### Getter Examples

```js
var ctx = new Excel.RequestContext();
var bindings = ctx.workbook.bindings;
bindings.load(items);
ctx.executeAsync().then(function () {
	for (var i = 0; i < bindings.items.length; i++)
	{
		Console.log(bindings.items[i].id);
		Console.log(bindings.items[i].index);
	}
});
```
Get the number of bindings

```js
var ctx = new Excel.RequestContext();
var bindings = ctx.workbook.bindings;
bindings.load(count);
ctx.executeAsync().then(function () {
	Console.log("Bindings: Count= " + bindings.count);
});

```

[Back](#properties)
