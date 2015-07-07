# TableCollection

Represents a collection of all the tables that are part of the workbook.

## [Properties](#getter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|count|int|Returns the number of tables in the workbook. Read-only.||
|items|[TableCollection](tablecollection.md)|A collection of table objects. Read-only.||

## Relationships
None

## Methods

| Methos           | Return Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|[add(address: string, hasHeaders: bool)](#addaddress-string-hasheaders-bool)|[Table](table.md)|Create a new table. The range source address determines the worksheet under which the table will be added. If the table cannot be added (e.g., because the address is invalid, or the table would overlap with another table), an error will be thrown.||
|[getItem(id: object)](#getitemid-object)|[Table](table.md)|Gets a table by Name or ID.||
|[getItemAt(index: number)](#getitematindex-number)|[Table](table.md)|Gets a table based on its position in the collection.||

## API Specification

### add(address: string, hasHeaders: bool)
Create a new table. The range source address determines the worksheet under which the table will be added. If the table cannot be added (e.g., because the address is invalid, or the table would overlap with another table), an error will be thrown.

#### Syntax
```js
tableCollectionObject.add(address, hasHeaders);
```

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|address|string|Address or name of the range object representing the data source. If the address does not contain a sheet name, the currently-active sheet is used.|
|hasHeaders|bool|Boolean value that indicates whether the data being imported has column labels. If the source does not contain headers (i.e,. when this property set to false), Excel will automatically generate header shifting the data down by one row.|

#### Returns
[Table](table.md)

#### Examples

```js
var ctx = new Excel.ExcelClientContext();
var table = ctx.workbook.tables.add('Sheet1!A1:E7', true);
ctx.load(table);
ctx.executeAsync().then(function () {
	Console.log(table.name);
});

```

[Back](#methods)

### getItem(id: object)
Gets a table by Name or ID.

#### Syntax
```js
tableCollectionObject.getItem(id);
```

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|id|object|Name or ID of the table to be retrieved.|

#### Returns
[Table](table.md)

#### Examples
```js

```

[Back](#methods)

### getItemAt(index: number)
Gets a table based on its position in the collection.

#### Syntax
```js
tableCollectionObject.getItemAt(index);
```

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|index|number|Index value of the object to be retrieved. Zero-indexed.|

#### Returns
[Table](table.md)

#### Examples

```js
var ctx = new Excel.ExcelClientContext();
var table = ctx.workbook.tables.getItemAt(0);
ctx.executeAsync().then(function () {
		Console.log(table.name);
});
```


[Back](#methods)

#### Getter Examples

```js
var ctx = new Excel.ExcelClientContext();
var tables = ctx.workbook.tables;
ctx.load(tables);
ctx.executeAsync().then(function () {
	Console.log("tables Count: " + tables.count);
	for (var i = 0; i < tables.items.length; i++)
	{
		Console.log(tables.items[i].name);
	}
});
```

Get the number of tables

```js
var ctx = new Excel.ExcelClientContext();
var tables = ctx.workbook.tables;
ctx.load(tables);
ctx.executeAsync().then(function () {
	
});

```
[Back](#properties)
