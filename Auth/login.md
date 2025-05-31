### Endpoint
```
POST: /api/login
```

### Flow
- You do a login request, server sends a opt to email -> You than check the opt, then you get a token!
[For testing, use opt 123456]

### Payload
- email: email of the user
```
{
   "email": "immo2n.work@gmail.com"
}
```
### When successfull
```
{
  "success": true,
  "message": "OTP Sent",
  "code": "OPT_SENT",
  "data": []
}
```
### When no email is sent
```
{
  "success": false,
  "message": "Email is required",
  "code": "BAD_REQUEST",
  "data": []
}
```
### When email is invalid
```
{
  "success": false,
  "message": "Email is invalid",
  "code": "INVALID_EMAIL",
  "data": []
}
```
### When email is invalid
```
{
  "success": false,
  "message": "Email is invalid",
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