### Endpoint
```
DELETE: /v1/cards/{cardID}
```

### Auth
Auth header: Send the user token you find from user auth!
```txt
Authorization: Bearer {token}
```

### Payload
- none

### Responses
Success
```json
{
    "success": true,
    "message": "Card deleted successfully",
    "data": "Card deleted successfully"
}
```
- For detailed payload and response data please look into the Swagger doc