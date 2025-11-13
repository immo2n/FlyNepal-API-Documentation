### Endpoint
```
POST: /v1/invoice/create
```

### Payload
```json
{
    "provider": "stripe",
    "item_type": "flight",
    "item_id": 1,
    "final_amount": 20.50,
    "currency": "usd"
}
```

Parameter details:
```txt
1. provider: is the payment processor available options for now are (stripe)
2. item_type: the item user paying you for (flight/product/service)
3. item_id: the item id(flight order id for exaple: ord_0000B0CodEmxwFXo7v9WkR, product order id or, service booking id)
4. final_amount: the amount to be paid for
5. currency: the currecy for now supported are(usd)
```

### Responses
Successfully
```json
{
    "success": true,
    "data": {
        "status": "created",
        "invoice": {
            "id": 1,
            "userId": 1,
            "provider": "stripe",
            "status": "pending",
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

Response details:
```txt
As you can see, you get the most important thing here - the providerData.
This contains the info for the froned to prcoess/initiate a payment sequence. This data is in JSON String, you
have to parse the data and depending on the provider you will have to find the needed value.

For example, in stripe you need the "client_secret". You can find it from here: "client_secret":"pi_3ST4YA3e5ppadNSy0KPckdMs_secret_sTgPM9YjeZ6zaqNZmiNfZLtda"
```