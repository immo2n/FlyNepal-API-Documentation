### Endpoint
```
PUT: /v1/user/addresses/{id}
```

## Payload
```json
{
    "fullName": "Moon Monoar",
    "phoneNumber": "+8801317215403",
    "streetAddress1": "Savar, Dhaka",
    "streetAddress2": "Khagan, Ashulia, Savar",
    "city": "Dhaka",
    "state": "Savar",
    "country": "Bangladesh",
    "zipCode": "1200",
    "defaultBilling": false,
    "defaultShipping": true
}
```

### Responses
Success
```json
{
    "success": true,
    "data": {
        "id": 3,
        "fullName": "Moon Monoar",
        "phoneNumber": "+8801317215403",
        "streetAddress1": "Savar, Dhaka",
        "streetAddress2": "Khagan, Ashulia, Savar",
        "city": "Dhaka",
        "state": "Savar",
        "country": "Bangladesh",
        "zipCode": "1200",
        "defaultBilling": false,
        "defaultShipping": true
    }
}
```