### Endpoint
```
POST: /v1/auth/user/verify
```

### Payload
```
{
    "email": "example@email.com",
    "opt" : "6 digit otp"
}
```

### Responses
Successfully logged in
```
{
    "success": false,
    "message": "Logged in!",
    "code": "OK",
    "data": {
        "token": "GP283vPCH8l2YKgEUnSnrvaIBgVb7qf2",
        "user": {
            "user_id": null,
            "email": "immo2n.work@gmail.com",
            "phone_number": null,
            "user_verified": true,
            "full_name": null,
            "profile_picture": null,
            "date_of_birth": null,
            "nationality": null
        }
    }
}
```
Email or OTP not set
```
{
    "success": false,
    "message": "Email and otp is required",
    "code": "BAD_REQUEST",
    "data": null
}
```
Invalid OTP
```
{
    "success": false,
    "message": "Invalid OTP",
    "code": "FORBIDDEN",
    "data": null
}
```