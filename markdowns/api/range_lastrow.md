# Range: LastRow

Gets the last row within the range. For example, the last row of "B2:D5" is "B5:D5".
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/names/<name>/range/LastRow
POST /workbook/bindings/<id>/range/LastRow
POST /workbook/tables/<id|name>/range/LastRow

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body

### Response
If successful, this method returns `, ` response code and [Range](../resources/range.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "range_lastrow"
}-->
```http
POST https://graph.microsoft.com/beta/workbook/names/<name>/range/LastRow
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.range"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 313

{
  "address": "address-value",
  "addressLocal": "addressLocal-value",
  "cellCount": 99,
  "columnCount": 99,
  "columnIndex": 99,
  "valueTypes": "valueTypes-value",
  "formulas": {
  },
  "formulasLocal": {
  },
  "numberFormat": {
  },
  "rowCount": 99,
  "rowIndex": 99,
  "text": {
  },
  "values": {
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Range: LastRow",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->