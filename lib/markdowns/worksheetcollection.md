# WorksheetCollection

Represents a collection of worksheet objects that are part of the workbook.

## [Properties](#getter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|items|[Worksheet[]](worksheet.md)|A collection of worksheet objects. Read-only.||

## Relationships
None


## Methods

| Method           | Return Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|[add(name: string)](#addname-string)|[Worksheet](worksheet.md)|Adds a new worksheet to the workbook. The worksheet will be added at the end of existing worksheets. If you wish to activate the newly added worksheet, call ".activate() on it.||
|[getActiveWorksheet()](#getactiveworksheet)|[Worksheet](worksheet.md)|Gets the currently active worksheet in the workbook.||
|[getItem(index: string)](#getitemindex-string)|[Worksheet](worksheet.md)|Gets a worksheet object using its Name or ID.||
|[load(param: object)](#loadparam-object)|void|Fills the proxy object created in JavaScript layer with property and object values specified in the parameter.||

## API Specification

### add(name: string)
Adds a new worksheet to the workbook. The worksheet will be added at the end of existing worksheets. If you wish to activate the newly added worksheet, call ".activate() on it.

#### Syntax
```js
worksheetCollectionObject.add(name);
```

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|name|string|Optional. The name of the worksheet to be added. If specified, name should be unqiue. If not specified, Excel determines the name of the new worksheet.|

#### Returns
[Worksheet](worksheet.md)

#### Examples

```js
var wSheetName = 'Sample Name';
var ctx = new Excel.RequestContext();
var worksheet = ctx.workbook.worksheets.add(wSheetName);
ctx.load(worksheet);
ctx.executeAsync().then(function () {
	Console.log(worksheet.name);
});
```


[Back](#methods)

### getActiveWorksheet()
Gets the currently active worksheet in the workbook.

#### Syntax
```js
worksheetCollectionObject.getActiveWorksheet();
```

#### Parameters
None

#### Returns
[Worksheet](worksheet.md)

#### Examples

```js
hellow!!!
var ctx = new Excel.RequestContext(); 
var activeWorksheet = ctx.workbook.worksheets.getActiveWorksheet();
ctx.load(activeWorksheet);
ctx.executeAsync().then(function () {
		Console.log(activeWorksheet.name);
});
```


[Back](#methods)

### getItem(index: string)
Gets a worksheet object using its Name or ID.

#### Syntax
```js
worksheetCollectionObject.getItem(index);
```

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|index|string|The Name or ID of the worksheet.|

#### Returns
[Worksheet](worksheet.md)

#### Examples

```js
var ctx = new Excel.RequestContext();
var wSheetName = 'Sheet1'; 
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
ctx.load(worksheet);
ctx.executeAsync().then(function () {
		Console.log(worksheet.index);
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
| Parameter       | Type    |Description|
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
var worksheets = ctx.workbook.worksheets;
ctx.load(worksheets);
ctx.executeAsync().then(function () {
	for (var i = 0; i < worksheets.items.length; i++)
	{
		Console.log(worksheets.items[i].name);
		Console.log(worksheets.items[i].index);
	}
});
```

[Back](#properties)
