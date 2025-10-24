### Endpoint
```
GET: /v1/vendors/{vendorId}/sales-summary
```
- vendorId: the vendor ID
- Query Parameters:
  - startDate: start date in ISO format (e.g., "2024-01-01")
  - endDate: end date in ISO format (e.g., "2024-01-31")

### Responses
Successfully
```json
{
    "success": true,
    "data": {
        "vendorId": 1,
        "period": {
            "startDate": "2024-01-01T00:00:00Z",
            "endDate": "2024-01-31T23:59:59Z"
        },
        "totalSales": 15750.00,
        "totalOrders": 45,
        "averageOrderValue": 350.00,
        "totalProductsSold": 120,
        "topSellingProducts": [
            {
                "productId": 1,
                "productName": "Eco-Friendly Notebook",
                "quantitySold": 50,
                "revenue": 3750.00
            },
            {
                "productId": 2,
                "productName": "Sustainable Pens",
                "quantitySold": 35,
                "revenue": 2625.00
            }
        ],
        "salesByDay": [
            {
                "date": "2024-01-01",
                "sales": 450.00,
                "orders": 3
            },
            {
                "date": "2024-01-02",
                "sales": 320.00,
                "orders": 2
            }
        ],
        "refundAmount": 150.00,
        "netSales": 15600.00,
        "commission": 1560.00,
        "netEarnings": 14040.00
    }
}
```

Error Response (Invalid date range)
```json
{
    "success": false,
    "message": "Invalid date range",
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
