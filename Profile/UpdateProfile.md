### Endpoint
```
POST: /v1/user/update-profile
```

### Payload
```json
{
    "token": "PDvHo1a8ApnnXu3C9UoKREN3vcYghg6j",
    "fullName": "Md. Moon Monoar"
}
```
Available editable fields are...
```
    String phoneNumber;
    String fullName;
    LocalDate dateOfBirth;
    String nationality;
```
Example for payload
```json
{
  "phoneNumber": "+9779812345678",
  "fullName": "Moon Monoar",
  "dateOfBirth": "1990-05-21",
  "nationality": "Nepalese"
}
```

### Responses
Successfully done
```json
{
    "success": true,
    "message": "User updated sucessfully",
    "data": {
        "user": "Sp7W7K6aAAGG",
        "fullName": "Md. Moon Monoar",
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
    "data": {
        "error_code": "INVALID_STATE",
        "message": "Resource not found.",
        "suggestion": "Check the resource id and try again.",
        "details": null,
        "value": null
    }
}
```