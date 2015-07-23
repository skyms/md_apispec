# RangeFill: Clear

Resets the range background.
## HTTP request
```http
POST /workbook/bindings/{id}/table/range/format/fill/clear
POST /workbook/tables/{id|name}/range/format/fill/clear
POST /workbook/worksheets/{id|name}/tables/{id|name}/range/format/fill/clear
POST /workbook/bindings/{id}/table/rows/{index}/range/format/fill/clear
POST /workbook/tables/{id|name}/rows/{index}/range/format/fill/clear
POST /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/format/fill/clear
POST /workbook/bindings/{id}/table/columns/{id|name}/range/format/fill/clear
POST /workbook/tables/{id|name}/columns/{id|name}/range/format/fill/clear
POST /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/format/fill/clear
POST /workbook/bindings/{id}/range/format/fill/clear
POST /workbook/worksheets/{id|name}/range({address})/format/fill/clear
POST /workbook/names/{name}/range/format/fill/clear
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | The Excel workbook session token required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
