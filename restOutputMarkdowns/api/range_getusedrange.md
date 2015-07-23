# Range: UsedRange

Returns the used range of the given range object.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/getUsedRange
GET /workbook/tables/{id|name}/range/getUsedRange
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/getUsedRange
GET /workbook/bindings/{id}/table/rows/{index}/range/getUsedRange
GET /workbook/tables/{id|name}/rows/{index}/range/getUsedRange
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/getUsedRange
GET /workbook/bindings/{id}/table/columns/{id|name}/range/getUsedRange
GET /workbook/tables/{id|name}/columns/{id|name}/range/getUsedRange
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/getUsedRange
GET /workbook/bindings/{id}/range/getUsedRange
GET /workbook/worksheets/{id|name}/range({address})/getUsedRange
GET /workbook/names/{name}/range/getUsedRange
```
## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
