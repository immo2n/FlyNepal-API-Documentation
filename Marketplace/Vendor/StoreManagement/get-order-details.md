### Endpoint
```
GET: /v1/vendors/{vendorId}/orders/{orderId}
```
- vendorId: the vendor ID
- orderId: the order ID

### Responses
Successfully
```json
{
    "success": true,
    "data": {
        "orderId": 1,
        "customerName": "John Doe",
        "customerEmail": "john.doe@example.com",
        "customerPhone": "+1-555-123-4567",
        "orderDate": "2024-01-15T10:30:00Z",
        "status": "PENDING",
        "totalAmount": 150.00,
        "shippingAddress": {
            "street": "123 Main St",
            "city": "New York",
            "state": "NY",
            "zipCode": "10001",
            "country": "USA"
        },
        "items": [
            {
                "productId": 1,
                "productName": "Eco-Friendly Notebook",
                "quantity": 2,
                "price": 75.00,
                "subtotal": 150.00
            }
        ],
        "trackingInfo": {
            "trackingNumber": null,
            "carrier": null,
            "estimatedDelivery": null
        }
    }
}
```

Error Response (Order not found)
```json
{
    "success": false,
    "message": "Order not found",
    "error": "NOT_FOUND"
}
```
