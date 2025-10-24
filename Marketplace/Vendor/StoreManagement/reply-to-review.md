### Endpoint
```
POST: /v1/vendors/{vendorId}/reviews/{reviewId}/reply
```
- vendorId: the vendor ID
- reviewId: the review ID

### Payload
```json
{
    "reply": "Thank you for your wonderful feedback! We're glad you love our products and appreciate your support. We look forward to serving you again soon!"
}
```

### Responses
Successfully replied
```json
{
    "success": true,
    "message": "Review reply added successfully",
    "data": {
        "reviewId": 1,
        "customerName": "John Doe",
        "rating": 5,
        "title": "Excellent quality products!",
        "comment": "The eco-friendly notebooks are amazing. Great quality and fast shipping. Highly recommended!",
        "vendorReply": {
            "reply": "Thank you for your wonderful feedback! We're glad you love our products and appreciate your support. We look forward to serving you again soon!",
            "repliedAt": "2024-01-15T11:00:00Z"
        }
    }
}
```

Error Response (Review not found)
```json
{
    "success": false,
    "message": "Review not found",
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

Error Response (Already replied)
```json
{
    "success": false,
    "message": "Review already has a reply",
    "error": "BAD_REQUEST"
}
```
