# Update tablerow

Update the properties of tablerow object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /workbook/tables/<id|name>/rows/<index>
PATCH /workbook/bindings/<id>/table/rows/<index>
PATCH /workbook/worksheets/<id|name>/tables/<id|name>/rows/<index>
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
|values|object[]|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

### Response
If successful, this method returns a `200 OK` response code and updated [TableRow](../resources/tablerow.md) object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_tablerow"
}-->
```http
PATCH https://graph.microsoft.com/beta/workbook/tables/<id|name>/rows/<index>
Content-type: application/json
Content-length: 36

{
  "index": 99,
  "values": {
  }
}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.tablerow"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 36

{
  "index": 99,
  "values": {
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update tablerow",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->