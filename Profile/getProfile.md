### Endpoint
```
POST: /api/profile/get
```

### Flow
- You send the user token you get the User profile!

### Payload
```
{
    "token" : "+7qznBRtkfoPP2mqcLl+fg==:ViTGQWbKrRiPUcRNv3SZV9TbUbjuvXyqh8h8QjnWVJbop7HUYt/awa9He6A5MHMAufU8tGiHDI1So9ZlQTE0DpKbaMCiJB/Uhns1h46pyII="
}
```
### When successfull
```
{
  "success": true,
  "message": "Profile fetched!",
  "code": "OK",
  "data": {
    "name": "Moon Monoar",
    "email": "immo2n.work@gmail.com"
  }
}
```
### When invalid data sent
- When this happens, front end should immediately show session expired and log out.
```
{
  "success": false,
  "message": "Failed to authorize!",
  "code": "AUTH_FAILED",
  "data": []
}
```
### When user does not exsts with that token [Rare case]
```
{
  "success": false,
  "message": "User not found!",
  "code": "USER_NOT_FOUND",
  "data": []
}
```
