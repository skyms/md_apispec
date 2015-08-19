# Range: BoundingRect

Gets the smallest range object that encompasses the given ranges. For example, the GetBoundingRect of "B2:C5" and "D10:E15" is "B2:E16".
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/getBoundingRect
GET /workbook/tables/{id|name}/range/getBoundingRect
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/getBoundingRect
GET /workbook/bindings/{id}/table/rows/{index}/range/getBoundingRect
GET /workbook/tables/{id|name}/rows/{index}/range/getBoundingRect
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/getBoundingRect
GET /workbook/bindings/{id}/table/columns/{id|name}/range/getBoundingRect
GET /workbook/tables/{id|name}/columns/{id|name}/range/getBoundingRect
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/getBoundingRect
GET /workbook/bindings/{id}/range/getBoundingRect
GET /workbook/worksheets/{id|name}/range({address})/getBoundingRect
GET /workbook/names/{name}/range/getBoundingRect
```
## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|anotherRange|object|The range object or address or range name.|

## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
