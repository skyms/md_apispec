# ChartFill

Represents the fill formatting for a chart element.

## Properties
None

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|clear()|void|Clear the fill color of a chart element.||
|setSolidColor(color: string)|void|Sets the fill formatting of a chart element to a uniform color.||

## API Specification

### clear()
Clear the fill color of a chart element.

#### Syntax
chartFillObject.clear();

#### Parameters
None

#### Examples

Clear the line format of the major Gridlines on value axis of the Chart named "Chart1"

```js
var ctx = new Excel.ExcelClientContext();
var gridlines = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").axes.valueaxis.majorGridlines;	

ctx.executeAsync().then(function () {
		Console.log"Chart Major Gridlines Format Cleared");
});
```

[Back](#methods)

### setSolidColor(color: string)
Sets the fill formatting of a chart element to a uniform color.

#### Syntax
chartFillObject.setSolidColor(color);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|color|string|Optional. HTML color code representing the color of the border line, of the form #RRGGBB (e.g. "FFA500") or as a named HTML color (e.g. "orange").|

#### Examples

Set BackGround Color of Chart1 to be red.
```js
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	


[Back](#methods)
