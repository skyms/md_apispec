# ChartAxis resource type

Represents a single axis in a chart.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartaxis"
}-->

```json
{
  "majorUnit": {
    "@odata.type": "microsoft.graph.object"
  },
  "maximum": {
    "@odata.type": "microsoft.graph.object"
  },
  "minimum": {
    "@odata.type": "microsoft.graph.object"
  },
  "minorUnit": {
    "@odata.type": "microsoft.graph.object"
  }
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|majorUnit|[object](object.md)|Represents the interval between two major tick marks. Can be set to a numeric value or an empty string.  The returned value is always a number.|
|maximum|[object](object.md)|Represents the maximum value on the value axis.  Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.|
|minimum|[object](object.md)|Represents the minimum value on the value axis. Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.|
|minorUnit|[object](object.md)|Represents the interval between two minor tick marks. "Can be set to a numeric value or an empty string (for automatic axis values). The returned value is always a number.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartAxisFormat](chartaxisformat.md)|Represents the formatting of a chart object, which includes line and font formatting. Read-only.|
|majorGridlines|[ChartGridlines](chartgridlines.md)|Returns a gridlines object that represents the major gridlines for the specified axis. Read-only.|
|minorGridlines|[ChartGridlines](chartgridlines.md)|Returns a Gridlines object that represents the minor gridlines for the specified axis. Read-only.|
|title|[ChartAxisTitle](chartaxistitle.md)|Represents the axis title. Read-only.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartAxis](../api/chartaxis_get.md) | [ChartAxis](chartaxis.md) |Read properties and relationships of chartAxis object.|
|[Update](../api/chartaxis_update.md) | [ChartAxis](chartaxis.md)	|Update ChartAxis object. |
|[Delete](../api/chartaxis_delete.md) | None |Delete ChartAxis object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartAxis resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->