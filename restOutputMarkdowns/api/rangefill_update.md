# Update RangeFill

Update the properties of rangefill object.
## HTTP request
```http
PATCH /workbook/bindings/{id}/table/range/format/fill
PATCH /workbook/tables/{id|name}/range/format/fill
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/range/format/fill
PATCH /workbook/bindings/{id}/table/rows/{index}/range/format/fill
PATCH /workbook/tables/{id|name}/rows/{index}/range/format/fill
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/format/fill
PATCH /workbook/bindings/{id}/table/columns/{id|name}/range/format/fill
PATCH /workbook/tables/{id|name}/columns/{id|name}/range/format/fill
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/format/fill
PATCH /workbook/bindings/{id}/range/format/fill
PATCH /workbook/worksheets/{id|name}/range({address})/format/fill
PATCH /workbook/names/{name}/range/format/fill
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | The Excel workbook session token required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of the border line, of the form #RRGGBB (e.g. "FFA500") or as a named HTML color (e.g. "orange")|

## Response
If successful, this method returns a `200 OK` response code and updated [RangeFill](../resources/rangefill.md) object in the response body.
## Example
### HTTP request
### Response
