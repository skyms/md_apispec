# ChartTitleFormat Object (JavaScript API for Excel)

_Applies to: Excel 2016, Office 2016_

Provides access to the office art formatting for chart title.

## Properties

None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|fill|[ChartFill](chartfill.md)|Represents the fill format of an object, which includes background formating information. Read-only.|
|font|[ChartFont](chartfont.md)|Represents the font attributes (font name, font size, color, etc.) for an object. Read-only.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[load(param: object)](#loadparam-object)|void|Fills the proxy object created in JavaScript layer with property and object values specified in the parameter.|

## Method Details


### load(param: object)
Fills the proxy object created in JavaScript layer with property and object values specified in the parameter.

#### Syntax
```js
object.load(param);
```

#### Parameters
| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|param|object|Optional. Accepts parameter and relationship names as delimited string or an array. Or, provide [loadOption](loadoption.md) object.|

#### Returns
void
