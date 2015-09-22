# ChartLineFormat Object (JavaScript API for Excel)

_Applies to: Excel 2016, Office 2016_

Enapsulates the formatting options for line elements.

| Property	   | Type	|Description
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of lines in the chart.|

_See property access [examples.](#property-access-examples)_

## Relationships
None


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[clear()](#clear)|void|Clear the line format of a chart element.|
|[load(param: object)](#loadparam-object)|void|Fills the proxy object created in JavaScript layer with property and object values specified in the parameter.|

## Method Details

### clear()
Clear the line format of a chart element.

#### Syntax
```js
chartLineFormatObject.clear();
```

#### Parameters
None

#### Returns
void

#### Examples

Clear the line format of the major gridlines on value axis of the Chart named "Chart1"

```js
Excel.run(function (ctx) { 
	var gridlines = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").axes.valueaxis.majorGridlines;	
	gridlines.format.line.clear();
	return ctx.sync().then(function() {
			Console.log"Chart Major Gridlines Format Cleared");
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

Set chart major gridlines on value axis to be red.

```js
Excel.run(function (ctx) { 
	var gridlines = ctx.workbook.worksheets.getItem("Sheet1").charts.axes.valueaxis.majorGridlines;
