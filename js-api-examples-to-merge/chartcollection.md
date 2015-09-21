# Chart Collection

### Getter 

```js
Excel.run(function (ctx) { 
var charts = ctx.workbook.worksheets.getItem("Sheet1").charts;
charts.load(items);
return ctx.sync().then(function() {
	for (var i = 0; i < charts.items.length; i++)
	{
		Console.log(charts.items[i].name);
		Console.log(charts.items[i].index);
	}
});
```

Get the number of charts

```js
Excel.run(function (ctx) { 
var charts = ctx.workbook.worksheets.getItem("Sheet1").charts;
charts.load(count);
return ctx.sync().then(function() {
	Console.log("charts: Count= " + charts.count);
});
```

### add(type: string, sourceData: string, seriesBy: string)

Add a chart of `chartType` "ColumnClustered" on worksheet "Charts" with `sourceData` from Range "A1:B4" and `seriresBy` is set to be "auto".

```js
var sheetName = "Sheet1";
var sourceData = sheetName + "!" + "A1:B4";
Excel.run(function (ctx) { 
var chart = ctx.workbook.worksheets.getItem(sheetName).charts.add("ColumnClustered", sourceData, "auto");
return ctx.sync().then(function() {
		Console.log("New Chart Added");
});
```

### getItem(name: string)

```js
Excel.run(function (ctx) { 
var chartname = 'Chart1';
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem(chartname);
return ctx.sync().then(function() {
		Console.log(chart.height);
});
```

### getItem(id: string)

```js
Excel.run(function (ctx) { 
var chartId = 'SamplChartId';
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem(chartId);
return ctx.sync().then(function() {
		Console.log(chart.height);
});
```


### getItemAt(index: number)

```js
Excel.run(function (ctx) { 
var lastPosition = ctx.workbook.worksheets.getItem("Sheet1").charts.count - 1;
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItemAt(lastPosition);
return ctx.sync().then(function() {
		Console.log(chart.name);
});
```

