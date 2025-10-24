### Endpoint
```
GET: /v1/vendors/{vendorId}/payments
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
                "paymentId": "PAY_20240115_001",
                "amount": 14040.00,
                "currency": "USD",
                "status": "COMPLETED",
                "paymentMethod": "BANK_TRANSFER",
                "description": "Monthly payout for January 2024",
                "period": {
                    "startDate": "2024-01-01T00:00:00Z",
                    "endDate": "2024-01-31T23:59:59Z"
                },
                "orderCount": 45,
                "commission": 1560.00,
                "netAmount": 14040.00,
                "processedAt": "2024-02-01T10:00:00Z",
                "bankDetails": {
                    "accountNumber": "****1234",
                    "bankName": "First National Bank",
                    "routingNumber": "123456789"
                }
            },
            {
                "id": 2,
                "paymentId": "PAY_20231215_001",
                "amount": 12500.00,
                "currency": "USD",
                "status": "COMPLETED",
                "paymentMethod": "BANK_TRANSFER",
                "description": "Monthly payout for December 2023",
                "period": {
                    "startDate": "2023-12-01T00:00:00Z",
                    "endDate": "2023-12-31T23:59:59Z"
                },
                "orderCount": 38,
                "commission": 1250.00,
                "netAmount": 12500.00,
                "processedAt": "2024-01-01T10:00:00Z",
                "bankDetails": {
                    "accountNumber": "****1234",
                    "bankName": "First National Bank",
                    "routingNumber": "123456789"
                }
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

Error Response (Vendor not found)
```json
{
    "success": false,
    "message": "Vendor not found",
    "error": "NOT_FOUND"
}
```
