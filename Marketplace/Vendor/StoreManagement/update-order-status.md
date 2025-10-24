### Endpoint
```
PUT: /v1/vendors/{vendorId}/orders/{orderId}/status
```
- vendorId: the vendor ID
- orderId: the order ID

### Payload
```json
{
    "status": "PROCESSING",
    "notes": "Order is being prepared for shipment"
}
```

Status Options:
- PENDING
- PROCESSING
- SHIPPED
- DELIVERED
- CANCELLED
- REFUNDED

### Responses
Successfully updated
```json
{
    "success": true,
    "message": "Order status updated successfully",
    "data": {
        "orderId": 1,
        "status": "PROCESSING",
        "updatedAt": "2024-01-15T11:00:00Z",
        "notes": "Order is being prepared for shipment"
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

Error Response (Invalid status)
```json
{
    "success": false,
    "message": "Invalid order status",
    "error": "BAD_REQUEST"
}
```
