# BindingCollection

Represents the collection of all the binding objects that are part of the workbook.

## [Properties](#getter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|count|int|Returns the number of bindings in the collection. Read-only.||
|items|[BindingCollection](bindingcollection.md)|A collection of binding objects. Read-only.||

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|getItem(id: string)|[Binding](binding.md)|Gets a binding object by ID.||
|getItemAt(index: number)|[Binding](binding.md)|Gets a binding object based on its position in the items array.||

## API Specification

### getItem(id: string)
Gets a binding object by ID.

#### Syntax
bindingCollectionObject.getItem(id);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|id|string|Optional. Id of the binding object to be retrieved. Zero-indexed.|

#### Examples
```js

```

[Back](#methods)

### getItemAt(index: number)
Gets a binding object based on its position in the items array.

#### Syntax
bindingCollectionObject.getItemAt(index);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|index|number|Optional. Index value of the object to be retrieved. Zero-indexed.|

#### Examples
```js
var ctx = new Excel.ExcelClientContext();
var lastPosition = ctx.workbook.bindings.count - 1;
var binding = ctx.workbook.bindings.getItemAt(lastPosition);
ctx.executeAsync().then(function () {
		Console.log(binding.id);
});
```


[Back](#methods)

#### Getter Examples

```js
var ctx = new Excel.ExcelClientContext();
var bindings = ctx.workbook.bindings;
ctx.load(bindings);
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
var ctx = new Excel.ExcelClientContext();
var bindings = ctx.workbook.bindings;
ctx.load(bindings);
ctx.executeAsync().then(function () {
	Console.log("Bindings: Count= " + bindings.count);
});

```
[Back](#properties)
