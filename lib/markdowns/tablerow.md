# TableRow

Represents a row in a table.

## [Properties](#getter-and-setter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|index|int|Returns the index number of the row within the rows collection of the table. Zero-indexed. Read-only.||
|values|object[][]|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.||

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|[delete()](#delete)|void|Deletes the row from the table.||
|[getRange()](#getrange)|[Range](range.md)|Returns the range object associated with the entire row.||

## API Specification

### delete()
Deletes the row from the table.

#### Syntax
tableRowObject.delete();

#### Parameters
None

#### Returns
void

#### Examples

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var row = ctx.workbook.tables.getItem(tableName).tableRows.getItemAt(2);
ctx.executeAsync().then();
```


[Back](#methods)

### getRange()
Returns the range object associated with the entire row.

#### Syntax
tableRowObject.getRange();

#### Parameters
None

#### Returns
[Range](range.md)

#### Examples

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var row = ctx.workbook.tables.getItem(tableName).tableRows.getItemAt(0);
ctx.load(rowRange);
ctx.executeAsync().then(function () {
	Console.log(rowRange.address);
});
```


[Back](#methods)

#### Getter and Setter Examples

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var row = ctx.workbook.tables.getItem(tableName).tableRows.getItem(0);
ctx.load(row);
ctx.executeAsync().then(function () {
	Console.log(row.index);
});
```

```js
var ctx = new Excel.ExcelClientContext();
var tables = ctx.workbook.tables;
var newValues = [["New", "Values", "For", "New", "Row"]];
var row = ctx.workbook.tables.getItem(tableName).tableRows.getItemAt(2);
row.values = newValues;
ctx.load(row);
ctx.executeAsync().then(function () {
	Console.log(row.values);
});
```[Back](#properties)
