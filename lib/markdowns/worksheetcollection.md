# WorksheetCollection

Represents a collection of worksheet objects that are part of the workbook.

## [Properties](#getter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|items|[WorksheetCollection](worksheetcollection.md)|A collection of worksheet objects. Read-only.||

## Relationships
None

## Methods

| Methos           | Return Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|[add(name: string)](#addname-string)|[Worksheet](worksheet.md)|Adds a new worksheet to the workbook. The worksheet will be added at the end of existing worksheets. If you wish to activate the newly added worksheet, call ".activate() on it.||
|[getActiveWorksheet()](#getactiveworksheet)|[Worksheet](worksheet.md)|Gets the currently active worksheet in the workbook.||
|[getItem(index: string)](#getitemindex-string)|[Worksheet](worksheet.md)|Gets a worksheet object using its Name or ID.||

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
var ctx = new Excel.ExcelClientContext();
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
var ctx = new Excel.ExcelClientContext();
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

```

[Back](#methods)

#### Getter Examples


```js
var ctx = new Excel.ExcelClientContext();
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
