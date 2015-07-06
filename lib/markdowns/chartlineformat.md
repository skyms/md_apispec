# ChartLineFormat

Enapsulates the formatting options for line elements.

## [Properties](#setter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|color|string|HTML color code representing the color of lines in the chart.||

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|clear()|void|Clear the line format of a chart element.||

## API Specification

### clear()
Clear the line format of a chart element.

#### Syntax
chartLineFormatObject.clear();

#### Parameters
None

#### Examples

Clear the line format of the major gridlines on value axis of the Chart named "Chart1"

```js
var ctx = new Excel.ExcelClientContext();
var gridlines = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").axes.valueaxis.majorGridlines;	

ctx.executeAsync().then(function () {
		Console.log"Chart Major Gridlines Format Cleared");
});
```

[Back](#methods)

#### Setter Examples

Set chart major gridlines on value axis to be red.
```js
var ctx = new Excel.ExcelClientContext();
var gridlines = ctx.workbook.worksheets.getItem("Sheet1").charts.axes.valueaxis.majorGridlines;

[Back](#properties)
