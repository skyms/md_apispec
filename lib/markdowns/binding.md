# Binding

Represents an Office.js binding that is defined in the workbook.

## [Properties](#getter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|id|string|Represents binding identifier. Read-only.||
|type|string|Returns the type of the binding. Possible values are: Range, Table, Text.||

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|getRange()|[Range](range.md)|Returns the range represented by the binding. Will throw an error if binding is not of the correct type.||
|getTable()|[Table](table.md)|Returns the table represented by the binding. Will throw an error if binding is not of the correct type.||
|getText()|string|Returns the text represented by the binding. Will throw an error if binding is not of the correct type.||

## API Specification

### getRange()
Returns the range represented by the binding. Will throw an error if binding is not of the correct type.

#### Syntax
bindingObject.getRange();

#### Parameters
None

#### Examples
Below example uses binding object to get the associated range.

```js
var ctx = new Excel.ExcelClientContext();
var binding = ctx.workbook.bindings.getItemAt(0);
ctx.load(range);
ctx.executeAsync().then(function() {
	Console.log(range.cellCount);
});
```

[Back](#methods)

### getTable()
Returns the table represented by the binding. Will throw an error if binding is not of the correct type.

#### Syntax
bindingObject.getTable();

#### Parameters
None

#### Examples
```js
var ctx = new Excel.ExcelClientContext();

var binding = ctx.workbook.bindings.getItemAt(0);
ctx.load(table);
ctx.executeAsync().then(function () {
		Console.log(table.name);
});

[Back](#methods)

### getText()
Returns the text represented by the binding. Will throw an error if binding is not of the correct type.

#### Syntax
bindingObject.getText();

#### Parameters
None

#### Examples

```js
var ctx = new Excel.ExcelClientContext();
var binding = ctx.workbook.bindings.getItemAt(0);
ctx.load(text);
ctx.executeAsync().then(function() {
	Console.log(text);
});
```


[Back](#methods)

#### Getter Examples

```js
var ctx = new Excel.ExcelClientContext();
var binding = ctx.workbook.bindings.getItemAt(0);
ctx.load(binding);
ctx.executeAsync().then(function() {
	Console.log(binding.type);
});
```[Back](#properties)
