### Endpoint
```
POST: /v1/categories/attributes
```

### Common mistake
- WARNGIN: for post paths are /v1/categories/attributes
- For get they are: /v1/categories/attributes/

### Payload
```
{
  "user": "Sp7W7K6aAAGG",
  "label": "Color",
  "name": "Color",
  "values": [
    "red",
    "green",
    "blue"
  ]
}
```

- Clue: the user is the logged in user's user(id) you can see the Profile/Get.md to get this!

### Responses
Successfully done
```
{
    "success": true,
    "message": "Attribute created successfully",
    "data": {
        "createdAt": "2025-10-11T06:29:17.314106292Z",
        "updatedAt": "2025-10-11T06:29:17.314106292Z",
        "id": 2,
        "name": "Color",
        "label": "Color",
        "values": [
            "red",
            "green",
            "blue"
        ],
        "owner": {
            "createdAt": "2025-08-31T12:29:40.766908Z",
            "updatedAt": "2025-10-10T14:46:59.113010Z",
            "id": 8,
            "user": "Sp7W7K6aAAGG",
            "fullName": "Moon Monoar",
            "email": "immo2n.work@gmail.com",
            "otpHash": "J0d7DmBW5W0P2dHF3Q5TcImuGtaaRahXGOBGmhS82wc=",
            "userToken": "A0GG96rsyFpyRJZ1ykenjCe1IB01NZhW",
            "phoneNumber": null,
            "userVerified": true,
            "profilePicture": null,
            "dateOfBirth": null,
            "nationality": null,
            "addresses": [],
            "fcmToken": null
        }
    }
}