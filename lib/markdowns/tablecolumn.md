# TableColumn

Represents a column in a table.

## [Properties](#getter-and-setter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|id|int|Returns a unique key that identifies the column within the table. Read-only.||
|index|int|Returns the index number of the column within the columns collection of the table. Zero-indexed. Read-only.||
|name|string|Returns the name of the table column. Read-only.||
|values|object[][]|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.||

## Relationships
None

## Methods

| Methos           | Return Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|[delete()](#delete)|void|Deletes the column from the table.||
|[getDataBodyRange()](#getdatabodyrange)|[Range](range.md)|Gets the range object associated with the data body of the column.||
|[getHeaderRowRange()](#getheaderrowrange)|[Range](range.md)|Gets the range object associated with the header row of the column.||
|[getRange()](#getrange)|[Range](range.md)|Gets the range object associated with the entire column.||
|[getTotalRowRange()](#gettotalrowrange)|[Range](range.md)|Gets the range object associated with the totals row of the column.||

## API Specification

### delete()
Deletes the column from the table.

#### Syntax
```jstableColumnObject.delete();
```

#### Parameters
None

#### Returns
void

#### Examples

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(2);
ctx.executeAsync().then();
```


[Back](#methods)

### getDataBodyRange()
Gets the range object associated with the data body of the column.

#### Syntax
```jstableColumnObject.getDataBodyRange();
```

#### Parameters
None

#### Returns
[Range](range.md)

#### Examples

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
ctx.load(dataBodyRange);
ctx.executeAsync().then(function () {
	Console.log(dataBodyRange.address);
});
```


[Back](#methods)

### getHeaderRowRange()
Gets the range object associated with the header row of the column.

#### Syntax
```jstableColumnObject.getHeaderRowRange();
```

#### Parameters
None

#### Returns
[Range](range.md)

#### Examples

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
ctx.load(headerRowRange);
ctx.executeAsync().then(function () {
	Console.log(headerRowRange.address);
});
```

[Back](#methods)

### getRange()
Gets the range object associated with the entire column.

#### Syntax
```jstableColumnObject.getRange();
```

#### Parameters
None

#### Returns
[Range](range.md)

#### Examples

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
ctx.load(range);
ctx.executeAsync().then(function () {
	Console.log(range.columnRange);
});
```


[Back](#methods)

### getTotalRowRange()
Gets the range object associated with the totals row of the column.

#### Syntax
```jstableColumnObject.getTotalRowRange();
```

#### Parameters
None

#### Returns
[Range](range.md)

#### Examples

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
ctx.load(totalRowRange);
ctx.executeAsync().then(function () {
	Console.log(totalRowRange.address);
});
```


[Back](#methods)

#### Getter and Setter Examples

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItem(0);
ctx.load(column);
ctx.executeAsync().then(function () {
	Console.log(column.index);
});
```

```js
var ctx = new Excel.ExcelClientContext();
var tables = ctx.workbook.tables;
var newValues = [["New"], ["Values"], ["For"], ["New"], ["Column"]];
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(2);
column.values = newValues;
ctx.load(column);
ctx.executeAsync().then(function () {
	Console.log(column.values);
});
```
[Back](#properties)
