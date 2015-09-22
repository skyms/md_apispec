# RangeBorderCollection Object (JavaScript API for Excel)

_Applies to: Excel 2016, Office 2016_

Represents the border objects that make up range border.

| Property	   | Type	|Description
|:---------------|:--------|:----------|
|count|int|Number of border objects in the collection. Read-only.|
|items|[RangeBorder[]](rangeborder.md)|A collection of rangeBorder objects. Read-only.|

_See property access [examples.](#property-access-examples)_

## Relationships
None


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[getItem(index: string)](#getitemindex-string)|[RangeBorder](rangeborder.md)|Gets a border object using its name|
|[getItemAt(index: number)](#getitematindex-number)|[RangeBorder](rangeborder.md)|Gets a border object using its index|
|[load(param: object)](#loadparam-object)|void|Fills the proxy object created in JavaScript layer with property and object values specified in the parameter.|

## Method Details

### getItem(index: string)
Gets a border object using its name

#### Syntax
```js
rangeBorderCollectionObject.getItem(index);
```

#### Parameters
| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|index|string|Index value of the border object to be retrieved.  Possible values are: EdgeTop, EdgeBottom, EdgeLeft, EdgeRight, InsideVertical, InsideHorizontal, DiagonalDown, DiagonalUp|

#### Returns
[RangeBorder](rangeborder.md)

#### Examples
```js
Excel.run(function (ctx) { 
	var sheetName = "Sheet1";
	var rangeAddress = "A1:F8";
	var worksheet = ctx.workbook.worksheets.getItem(sheetName);
	var range = worksheet.getRange(rangeAddress);
	var borderName = 'EdgeTop';
	var border = range.format.borders.getItem(borderName);
	border.load(style);
	return ctx.sync().then(function() {
			Console.log(border.style);
	});
});

```

```js

Excel.run(function (ctx) { 
	var sheetName = "Sheet1";
	var rangeAddress = "A1:F8";
	var worksheet = ctx.workbook.worksheets.getItem(sheetName);
	var range = worksheet.getRange(rangeAddress);
	var border = ctx.workbook.borders.getItemAt(0);
	border.load(sideIndex);
	return ctx.sync().then(function() {
			Console.log(border.sideIndex);
	});
});

```

### getItemAt(index: number)
Gets a border object using its index

#### Syntax
```js
rangeBorderCollectionObject.getItemAt(index);
```

#### Parameters
| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|index|number|Index value of the object to be retrieved. Zero-indexed.|

#### Returns
[RangeBorder](rangeborder.md)

#### Examples
```js

Excel.run(function (ctx) { 
	var sheetName = "Sheet1";
	var rangeAddress = "A1:F8";
	var worksheet = ctx.workbook.worksheets.getItem(sheetName);
	var range = worksheet.getRange(rangeAddress);
	var border = ctx.workbook.borders.getItemAt(0);
	border.load(sideIndex);
	return ctx.sync().then(function() {
			Console.log(border.sideIndex);
	});
});

```

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

	
### Property access examples

```js
Excel.run(function (ctx) { 
	var sheetName = "Sheet1";
	var rangeAddress = "A1:F8";
	var worksheet = ctx.workbook.worksheets.getItem(sheetName);
	var range = worksheet.getRange(rangeAddress);
	var borders = range.format.borders;
	border.load(items);
	return ctx.sync().then(function() {
		Console.log(borders.count);
		for (var i = 0; i < borders.items.length; i++)
		{
			Console.log(borders.items[i].sideIndex);
		}
	});
});

```
The example below adds grid border around the range.

```js
Excel.run(function (ctx) { 
	var sheetName = "Sheet1";
	var rangeAddress = "A1:F8";
	var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
	range.format.borders.getItem('InsideHorizontal').style = 'Continuous';
	range.format.borders.getItem('InsideVertical').style = 'Continuous';
	range.format.borders.getItem('EdgeBottom').style = 'Continuous';
	range.format.borders.getItem('EdgeLeft').style = 'Continuous';
	range.format.borders.getItem('EdgeRight').style = 'Continuous';
	range.format.borders.getItem('EdgeTop').style = 'Continuous';
	return ctx.sync(); 
}); 