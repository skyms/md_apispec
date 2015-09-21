# Range Format

### Getter and setter Range Format 

Below example selects all of the Range's format properties. 

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
Excel.run(function (ctx) { 
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
range.load(format, format/fill, format/borders, format/font);
ctx.executeAsync().then(function() {
	Console.log(range.format.wrapText);
	Console.log(range.format.fill.color);
	Console.log(range.format.font.name);

});
```

The example below sets font name, fill color and wraps text. 

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.format.wrapText = true;
range.format.font.name = 'Times New Roman';
range.format.fill.color = '0000FF';
return ctx.sync(); 
}); 

The example below adds grid border around the range.

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.format.borders('InsideHorizontal').lineStyle = 'Continuous';
range.format.borders('InsideVertical').lineStyle = 'Continuous';
range.format.borders('EdgeBottom').lineStyle = 'Continuous';
range.format.borders('EdgeLeft').lineStyle = 'Continuous';
range.format.borders('EdgeRight').lineStyle = 'Continuous';
range.format.borders('EdgeTop').lineStyle = 'Continuous';
return ctx.sync(); 
}); 
