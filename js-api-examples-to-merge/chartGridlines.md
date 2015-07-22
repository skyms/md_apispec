# Chart Gridlines

### Getter and setter

Get the `visible` of Major Gridlines on value axis of Chart1
```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

var majGridlines = chart.axes.valueaxis.majorGridlines;
ctx.load(majGridlines);
ctx.executeAsync().then(function () {
		Console.log(majGridlines.visible);
});
```

Set to show major gridlines on valueAxis of Chart1

```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

chart.axes.valueaxis.majorgridlines.visible = true;

ctx.executeAsync().then(function () {
		Console.log("Axis Gridlines Added ");
});
```
