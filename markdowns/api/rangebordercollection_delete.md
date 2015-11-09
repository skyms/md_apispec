# Delete RangeBorderCollection

Delete RangeBorderCollection.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /workbook/names/<name>/range/format/borders
DELETE /workbook/bindings/<id>/range/format/borders
DELETE /workbook/tables/<id|name>/range/format/borders

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
Do not supply a request body for this method.


### Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_rangebordercollection"
}-->
```http
DELETE https://graph.microsoft.com/beta/workbook/names/<name>/range/format/borders
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete RangeBorderCollection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->