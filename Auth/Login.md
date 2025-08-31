### Endpoint
```
POST: /v1/auth/user/login
```

### Payload
```
{
    "email": "example@email.com"
}
```

### Responses
Successfully done
```
{
    "success": true,
    "message": "Welcome! OTP sent please verify with the email.",
    "code": "OK",
    "data": "example@email.com"
}
```
No user with email
```
{
    "success": false,
    "message": "User not found!",
    "code": "CONFLICT",
    "data": null
}
```
No email given
```
{
    "success": false,
    "message": "Email is required",
    "code": "BAD_REQUEST",
    "data": null
}
```
OTP Could not be sent
```
{
    "success": false,
    "message": "Could not send OTP!",
    "code": "SERVER_ERROR",
    "data": null
}
```
