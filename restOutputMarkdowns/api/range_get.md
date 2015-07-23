# Get Range

Retrieve the properties and relationships of range object.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range
GET /workbook/tables/{id|name}/range
GET /workbook/worksheets/{id|name}/tables/{id|name}/range
GET /workbook/bindings/{id}/table/rows/{index}/range
GET /workbook/tables/{id|name}/rows/{index}/range
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range
GET /workbook/bindings/{id}/table/columns/{id|name}/range
GET /workbook/tables/{id|name}/columns/{id|name}/range
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range
GET /workbook/bindings/{id}/range
GET /workbook/worksheets/{id|name}/range({address})
GET /workbook/names/{name}/range
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