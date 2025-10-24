### Endpoint
```
POST: /v1/vendors/{vendorId}/discounts
```
- vendorId: the vendor ID

### Payload
```json
{
    "name": "Summer Sale 2024",
    "description": "20% off on all eco-friendly products",
    "discountType": "PERCENTAGE",
    "discountValue": 20.0,
    "minimumOrderAmount": 100.0,
    "maximumDiscountAmount": 50.0,
    "startDate": "2024-06-01T00:00:00Z",
    "endDate": "2024-08-31T23:59:59Z",
    "usageLimit": 100,
    "isActive": true
}
```

Discount Types:
- PERCENTAGE: Percentage-based discount
- FIXED_AMOUNT: Fixed amount discount

### Responses
Successfully created
```json
{
    "success": true,
    "message": "Discount created successfully",
    "data": {
        "id": 1,
        "name": "Summer Sale 2024",
        "description": "20% off on all eco-friendly products",
        "discountType": "PERCENTAGE",
        "discountValue": 20.0,
        "minimumOrderAmount": 100.0,
        "maximumDiscountAmount": 50.0,
        "startDate": "2024-06-01T00:00:00Z",
        "endDate": "2024-08-31T23:59:59Z",
        "usageLimit": 100,
        "usageCount": 0,
        "isActive": true,
        "createdAt": "2024-01-15T10:00:00Z"
    }
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

Error Response (Vendor not found)
```json
{
    "success": false,
    "message": "Vendor not found",
    "error": "NOT_FOUND"
}
```
