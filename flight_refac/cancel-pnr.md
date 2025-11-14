## URL: POST | /v2/flight/cancel
### Payload:
```
{
  "provider": "mondee",
  "pnr": "QCWEBF",
  "orderId": "20001150630107",
  "reason": "Customer requested cancellation"
}
```
### Response:
```json
{
    "success": true,
    "provider": "duffel",
    "message": "Cancellation info detail fetched successfully",
    "errorMessage": null,
    "pnr": "AME24R",
    "cancelId": "ore_0000B0FI3kZN9BCYaEyhov",
    "orderId": "ord_0000B0FI1EeE8OcVJVn4fw",
    "status": "cancellation processing",
    "refundInfo": {
        "refundAmount": 0.0,
        "refundCurrency": "USD",
        "createdAt": "2025-11-14T19:16:05.371094",
        "expiresAt": "2025-11-14T20:16:05"
    }
}
```
