### Endpoint
```
POST: /v1/vendors/{vendorId}/orders/{orderId}/tracking
```
- vendorId: the vendor ID
- orderId: the order ID

### Payload
```json
{
    "trackingNumber": "1Z999AA1234567890",
    "carrier": "UPS",
    "estimatedDelivery": "2024-01-20T18:00:00Z",
    "notes": "Package shipped via UPS Ground"
}
```

### Responses
Successfully added
```json
{
    "success": true,
    "message": "Tracking information added successfully",
    "data": {
        "orderId": 1,
        "trackingNumber": "1Z999AA1234567890",
        "carrier": "UPS",
        "estimatedDelivery": "2024-01-20T18:00:00Z",
        "addedAt": "2024-01-15T12:00:00Z",
        "notes": "Package shipped via UPS Ground"
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

Error Response (Invalid tracking number)
```json
{
    "success": false,
    "message": "Invalid tracking number format",
    "error": "BAD_REQUEST"
}
```
