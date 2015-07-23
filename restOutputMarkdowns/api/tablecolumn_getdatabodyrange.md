# TableColumn: DataBodyRange

Gets the range object associated with the data body of the column.
## HTTP request
```http
GET /workbook/bindings/{id}/table/columns/{id|name}/getDataBodyRange
GET /workbook/tables/{id|name}/columns/{id|name}/getDataBodyRange
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/getDataBodyRange
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
