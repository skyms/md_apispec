
### delete()
```js
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

chart.delete();
ctx.executeAsync().then(function () {
		Console.log"Chart Deleted");
});
```
### setData(sourceData: string, seriesBy: string)

Set the `sourceData` to be "A1:B4" and `seriesBy` to be "Columns"

```js
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	
var sourceData = "A1:B4";

chart.setData(sourceData, "Columns");
ctx.executeAsync().then();
```
### Getter setter

Get a chart named "Chart1"
```js
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

ctx.load(chart);
ctx.executeAsync().then(function () {
		Console.log("Chart1 Loaded");
});
```

Update a chart including renaming, positioning and resizing.

```js
chartObject.name="New Name";
chartObject.top = 100;
chartObject.left = 100;
chartObject.height = 200;
chartObject.weight = 200;
```
Rename the chart to new name, resize the chart to 200 points in both height and weight. Move Chart1 to 100 points to the top and left. 

```js
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");

chart.name="New Name";	
chart.top = 100;
chart.left = 100;
chart.height =200;
chart.width =200;
ctx.executeAsync().then(function () {
		Console.log("Chart Updated");
});
```
