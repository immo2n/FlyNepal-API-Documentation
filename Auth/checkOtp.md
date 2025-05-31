### Endpoint
```
POST: /api/check-otp
```

### Flow
- You send the otp and the email of the user to get a token!

### Payload
```
{
    "email": "immo2n.work@gmail.com",
    "otp": "123456"
}
```
### When successfull
```
{
  "success": true,
  "message": "Auth token is generated. Store this safely.",
  "code": "OK",
  "data": {
    "token": "+7qznBRtkfoPP2mqcLl+fg==:ViTGQWbKrRiPUcRNv3SZV9TbUbjuvXyqh8h8QjnWVJbop7HUYt/awa9He6A5MHMAufU8tGiHDI1So9ZlQTE0DpKbaMCiJB/Uhns1h46pyII="
  }
}
```
### When invalid data sent
```
{
  "success": false,
  "message": "Email or OTP is invalid",
  "code": "INVALID_EMAIL",
  "data": []
}
```
### When user does not exsts with that email
```
{
  "success": false,
  "message": "User not found!",
  "code": "USER_NOT_FOUND",
  "data": []
}
```