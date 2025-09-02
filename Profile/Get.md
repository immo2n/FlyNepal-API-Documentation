### Endpoint
```
POST: /v1/user/get
```

### Payload
```json
{
    "token": "PDvHo1a8ApnnXu3C9UoKREN3vcYghg6j",
}
```

### Responses
Success
```json
{
    "success": true,
    "message": "Found user",
    "code": "OK",
    "data": {
        "user": "Sp7W7K6aAAGG",
        "fullName": "Moon Monoar",
        "email": "immo2n.work@gmail.com",
        "userVerified": true,
        "phoneNumber": null,
        "profilePicture": null,
        "dateOfBirth": null,
        "nationality": null,
        "addresses": [],
        "fcmToken": null
    }
}
```
Invalid token
```json
{
    "success": false,
    "message": null,
    "code": null,
    "data": null
}
```