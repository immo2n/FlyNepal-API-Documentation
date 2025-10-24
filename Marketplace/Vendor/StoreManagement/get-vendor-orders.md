### Endpoint
```
GET: /v1/vendors/{vendorId}/orders
```
- vendorId: the vendor ID
- Query Parameters:
  - page: page number (default: 0)
  - size: page size (default: 10)
  - sort: sorting criteria (default: "createdAt,desc")

### Responses
Successfully
```json
{
    "success": true,
    "data": {
        "content": [
            {
                "orderId": 1,
                "customerName": "John Doe",
                "customerEmail": "john.doe@example.com",
                "orderDate": "2024-01-15T10:30:00Z",
                "status": "PENDING",
                "totalAmount": 150.00,
                "items": [
                    {
                        "productId": 1,
                        "productName": "Eco-Friendly Notebook",
                        "quantity": 2,
                        "price": 75.00
                    }
                ]
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
        "totalElements": 1,
        "totalPages": 1,
        "first": true,
        "last": true,
        "numberOfElements": 1
    }
}
```
