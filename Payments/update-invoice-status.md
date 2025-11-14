### Endpoint
```
PUT: /v1/invoice/status
```

### Payload
```json
{
    "id": 1,
    "status": "paid"
}
```

### Responses
Successfully
```json
{
    "success": true,
    "data": {
        "status": "updated",
        "invoice": {
            "id": 1,
            "userId": 1,
            "provider": "stripe",
            "status": "paid",
            "remark": null,
            "finalAmount": 20.50,
            "currency": "USD",
            "itemType": "flight",
            "itemId": "1",
            "providerData": "{\"amount\":2050,\"amount_capturable\":0,\"amount_details\":{\"tip\":{}},\"amount_received\":0,\"automatic_payment_methods\":{\"allow_redirects\":\"always\",\"enabled\":true},\"capture_method\":\"automatic_async\",\"client_secret\":\"pi_3ST4YA3e5ppadNSy0KPckdMs_secret_sTgPM9YjeZ6zaqNZmiNfZLtda\",\"confirmation_method\":\"automatic\",\"created\":1763055794,\"currency\":\"usd\",\"customer\":{\"id\":\"cus_TPuKedB7pLOE74\"},\"id\":\"pi_3ST4YA3e5ppadNSy0KPckdMs\",\"livemode\":false,\"metadata\":{\"invoice_id\":\"null\",\"user\":\"1\"},\"object\":\"payment_intent\",\"payment_method_configuration_details\":{\"id\":\"pmc_1S1BFH3e5ppadNSyVSq3Nl6u\"},\"payment_method_options\":{\"afterpay_clearpay\":{},\"card\":{\"request_three_d_secure\":\"automatic\"},\"klarna\":{},\"link\":{}},\"payment_method_types\":[\"card\",\"afterpay_clearpay\",\"klarna\",\"link\"],\"status\":\"requires_payment_method\"}",
            "time": "2025-11-13T17:43:15.465078Z"
        }
    }
}
```