### Endpoint
```
GET: /v1/vendors/{vendorId}/discounts
```
- vendorId: the vendor ID
- Query Parameters:
  - page: page number (default: 0)
  - size: page size (default: 10)

### Responses
Successfully
```json
{
    "success": true,
    "data": {
        "content": [
            {
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
                "usageCount": 15,
                "isActive": true,
                "createdAt": "2024-01-15T10:00:00Z"
            },
            {
                "id": 2,
                "name": "New Customer Discount",
                "description": "$10 off for new customers",
                "discountType": "FIXED_AMOUNT",
                "discountValue": 10.0,
                "minimumOrderAmount": 50.0,
                "maximumDiscountAmount": 10.0,
                "startDate": "2024-01-01T00:00:00Z",
                "endDate": "2024-12-31T23:59:59Z",
                "usageLimit": 1000,
                "usageCount": 45,
                "isActive": true,
                "createdAt": "2024-01-01T00:00:00Z"
            }
        ],
        "pageable": {
            "pageNumber": 0,
            "pageSize": 10,
            "sort": {
                "sorted": true,
                "unsorted": false
            }
        },
        "totalElements": 2,
        "totalPages": 1,
        "first": true,
        "last": true,
        "numberOfElements": 2
    }
}
```
