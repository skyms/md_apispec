# Update chartlegend

Update the properties of chartlegend object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /workbook/worksheets/<id|name>/charts/<name>/legend
```
### Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|bool|Boolean value for whether the chart legend should overlap with the main body of the chart.|
|position|string|Represents the position of the legend on the chart. Possible values are: `Top`, `Bottom`, `Left`, `Right`, `Corner`, `Custom`.|
|visible|bool|A boolean value the represents the visibility of a ChartLegend object.|

### Response
If successful, this method returns a `200 OK` response code and updated [ChartLegend](../resources/chartlegend.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_chartlegend"
}-->
```http
PATCH https://graph.microsoft.com/beta/workbook/worksheets/<id|name>/charts/<name>/legend
Content-type: application/json
Content-length: 72

{
  "visible": true,
  "position": "position-value",
  "overlay": true
}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.chartlegend"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 72

{
  "visible": true,
  "position": "position-value",
  "overlay": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update chartlegend",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->