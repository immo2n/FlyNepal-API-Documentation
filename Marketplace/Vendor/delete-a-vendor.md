### Endpoint
```
DELETE: /v1/vendors
```

--- Please show ALL THE WARNINGS POSSIBLE TO USER in order to delete vendor ---

### Payload
```json
{
    "id": 21,
    "token": "QbmqXpBcxxRpYhQ73qztsVCKpSMoZ6HJ"
}
```
- clue: the id of the targeted vendor!
- clue: token is the login token of the user you stored while logged in! this is needed for security.

### Responses
```json
{
    "success": true,
    "message": "Vendor deleted successfully"
}
```