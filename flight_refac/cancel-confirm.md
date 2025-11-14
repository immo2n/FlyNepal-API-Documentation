## Cancel Confirm
URL: POST | /v2/flight/cancel-confirm
### Payload:
```json
{
  "provider": "duffel",
  "pnr": "AME24R", //optional for duffel
  "orderId": "ord_0000B0FI1EeE8OcVJVn4fw", //optioanl for duffel
  "cancelId": "ore_0000B0FI3kZN9BCYaEyhov"
}
```

### Response:
```json
{
    "success": true,
    "provider": "duffel",
    "orderId": "ord_0000B0FI1EeE8OcVJVn4fw",
    "cancelId": "ore_0000B0FJ4zZcwoC9MUFm5Z",
    "pnr": "AME24R",
    "status": "cancelled",
    "message": "Cancellation confirmed successfully",
    "errorMessage": null
}
```
