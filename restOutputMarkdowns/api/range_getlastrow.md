# Range: LastRow

Gets the last row within the range. For example, the last row of "B2:D5" is "B5:D5".
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/getLastRow
GET /workbook/tables/{id|name}/range/getLastRow
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/getLastRow
GET /workbook/bindings/{id}/table/rows/{index}/range/getLastRow
GET /workbook/tables/{id|name}/rows/{index}/range/getLastRow
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/getLastRow
GET /workbook/bindings/{id}/table/columns/{id|name}/range/getLastRow
GET /workbook/tables/{id|name}/columns/{id|name}/range/getLastRow
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/getLastRow
GET /workbook/bindings/{id}/range/getLastRow
GET /workbook/worksheets/{id|name}/range({address})/getLastRow
GET /workbook/names/{name}/range/getLastRow
```
## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
