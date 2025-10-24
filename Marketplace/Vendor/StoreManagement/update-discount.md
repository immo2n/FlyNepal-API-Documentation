### Endpoint
```
PUT: /v1/vendors/{vendorId}/discounts/{discountId}
```
- vendorId: the vendor ID
- discountId: the discount ID

### Payload
```json
{
    "name": "Summer Sale 2024 - Extended",
    "description": "25% off on all eco-friendly products",
    "discountType": "PERCENTAGE",
    "discountValue": 25.0,
    "minimumOrderAmount": 75.0,
    "maximumDiscountAmount": 75.0,
    "startDate": "2024-06-01T00:00:00Z",
    "endDate": "2024-09-30T23:59:59Z",
    "usageLimit": 150,
    "isActive": true
}
```

### Responses
Successfully updated
```json
{
    "success": true,
    "message": "Discount updated successfully",
    "data": {
        "id": 1,
        "name": "Summer Sale 2024 - Extended",
        "description": "25% off on all eco-friendly products",
        "discountType": "PERCENTAGE",
        "discountValue": 25.0,
        "minimumOrderAmount": 75.0,
        "maximumDiscountAmount": 75.0,
        "startDate": "2024-06-01T00:00:00Z",
        "endDate": "2024-09-30T23:59:59Z",
        "usageLimit": 150,
        "usageCount": 15,
        "isActive": true,
        "createdAt": "2024-01-15T10:00:00Z",
        "updatedAt": "2024-01-15T14:30:00Z"
    }
}
```

Error Response (Discount not found)
```json
{
    "success": false,
    "message": "Discount not found",
    "error": "NOT_FOUND"
}
```

Error Response (Vendor not found)
```json
{
    "success": false,
    "message": "Vendor not found",
    "error": "NOT_FOUND"
}
```

Error Response (Invalid discount data)
```json
{
    "success": false,
    "message": "Invalid discount data",
    "error": "BAD_REQUEST"
}
```
