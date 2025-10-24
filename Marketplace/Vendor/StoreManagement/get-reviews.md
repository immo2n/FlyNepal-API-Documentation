### Endpoint
```
GET: /v1/vendors/{vendorId}/reviews
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
                "customerName": "John Doe",
                "customerEmail": "john.doe@example.com",
                "rating": 5,
                "title": "Excellent quality products!",
                "comment": "The eco-friendly notebooks are amazing. Great quality and fast shipping. Highly recommended!",
                "orderId": 1,
                "productId": 1,
                "productName": "Eco-Friendly Notebook",
                "createdAt": "2024-01-15T10:30:00Z",
                "vendorReply": {
                    "reply": "Thank you for your wonderful feedback! We're glad you love our products.",
                    "repliedAt": "2024-01-15T11:00:00Z"
                }
            },
            {
                "id": 2,
                "customerName": "Jane Smith",
                "customerEmail": "jane.smith@example.com",
                "rating": 4,
                "title": "Good products, fast delivery",
                "comment": "Products arrived quickly and in good condition. Would order again.",
                "orderId": 2,
                "productId": 2,
                "productName": "Sustainable Pens",
                "createdAt": "2024-01-14T15:20:00Z",
                "vendorReply": null
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
