## Ticket Issue 
### URL: POST | `/v2/flight/issue-ticket`
### Payload
```json
{
  "provider": "duffel",
  "orderId": "{{offerId}}",
  "totalAmount": "381.64",
  "currency": "USD"
}
```

### Success Response sample
```json
{
    "success": true,
    "message": "Ticket issued successfully",
    "errorMessage": null,
    "provider": "duffel",
    "orderId": "ord_0000B0CzjBwPlbSDrvrsyO",
    "ticketNumber": null,
    "ticketType": null,
    "status": "issued",
    "metadata": {
        "amount": 381.64,
        "currency": "USD",
        "paymentType": "balance"
    },
    "issuedAt": "2025-11-13T22:41:51.188164683"
}
```
