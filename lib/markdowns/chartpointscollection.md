# ChartPointsCollection

A collection of all the chart points within a series inside a chart.

## [Properties](#getter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|count|int|Returns the number of chart points in the collection. Read-only.||
|items|[ChartPointsCollection](chartpointscollection.md)|A collection of chartPoints objects. Read-only.||

## Relationships
None

## Methods

| Methos           | Return Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|[getItemAt(index: number)](#getitematindex-number)|[ChartPoint](chartpoint.md)|Retrieve a point based on its position within the series.||

## API Specification

### getItemAt(index: number)
Retrieve a point based on its position within the series.

#### Syntax
```jschartPointsCollectionObject.getItemAt(index);
```

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|index|number|Index value of the object to be retrieved. Zero-indexed.|

#### Returns
[ChartPoint](chartpoint.md)

#### Examples
Set the border color for the first points in the points collection

```js
var ctx = new Excel.ExcelClientContext();
var point = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").series.getItemAt(0).points;
points.getItemAt(0).format.fill.setSolidColor("8FBC8F");
ctx.executeAsync().then(function () {
	Console.log("Point Border Color Changed");
});
```
[Back](#methods)

#### Getter Examples

Get the names of points in the points collection
```js
var ctx = new Excel.ExcelClientContext();
var pointsCollection = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").points;
ctx.load(pointsCollection);
ctx.executeAsync().then(function () {
	Console.log("Points Collection loaded");
});
```

Get the number of points

```js
var ctx = new Excel.ExcelClientContext();
var pointsCollection = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").points;
ctx.load(pointsCollection);
ctx.executeAsync().then(function () {
	Console.log("points: Count= " + pointsCollection.count);
});

```

[Back](#properties)
