### Endpoint
```
PUT: /v1/cards/{cardID}
```

### Auth
Auth header: Send the user token you find from user auth!
```txt
Authorization: Bearer {token}
```

### Payload
```json
{
  "cardNumber": "4242424242424242",
  "cardholderName": "Moon Monoar",
  "expiryMonth": 12,
  "expiryYear": 2028,
  "cardType": "CREDIT",
  "cardNickname": "Personal Visa",
  "isDefault": true,
  "billingAddress": "123 Main St",
  "billingCity": "New York",
  "billingCountry": "USA",
  "billingPostalCode": "10001"
}
```

### Responses
Success
```json
{
    "success": true,
    "message": "Card updated successfully",
    "data": {
        "id": 1,
        "maskedCardNumber": "************4242",
        "lastFourDigits": "4242",
        "cardholderName": "Moon Monoar",
        "expiryMonth": 12,
        "expiryYear": 2028,
        "cardBrand": "VISA",
        "cardType": "CREDIT",
        "cardNickname": "Personal Visa",
        "isDefault": true,
        "isActive": true,
        "isExpired": false,
        "billingAddress": "123 Main St",
        "billingCity": "New York",
        "billingCountry": "USA",
        "billingPostalCode": "10001",
        "createdAt": "2025-10-19T18:10:24.352192Z",
        "updatedAt": "2025-10-19T18:10:24.352192Z"
    }
}
```
- For detailed payload and response data please look into the Swagger doc