### Endpoint
```
POST: /v1/categories
```

### Common mistake
- WARNGIN: for post paths are /v1/categories/attributes
- For get they are: /v1/categories/attributes/

### Payload
```
{
  "user": "Sp7W7K6aAAGG",
  "name": "Clothings",
  "attributes": [
    3, 4
  ]
}
```

- Clue: the user is the logged in user's user(id) you can see the Profile/Get.md to get this!
- attributes is an array of attributes the user created. You can get the list of attributes from the get-attribute-by-user.md doc.

### Responses
Successfully done
```json
{
    "success": true,
    "message": "Category booked successfully",
    "data": {
        "createdAt": "2025-10-11T07:09:52.130144821Z",
        "updatedAt": "2025-10-11T07:09:52.130144821Z",
        "id": 1,
        "name": "Clothings",
        "attributes": [
            {
                "createdAt": "2025-10-11T07:01:09.662521Z",
                "updatedAt": "2025-10-11T07:01:09.662521Z",
                "id": 3,
                "name": "Color",
                "label": "Color",
                "values": [
                    "yellow",
                    "green",
                    "blue"
                ]
            },
            {
                "createdAt": "2025-10-11T07:01:33.416341Z",
                "updatedAt": "2025-10-11T07:01:33.416341Z",
                "id": 4,
                "name": "Gender",
                "label": "Gender",
                "values": [
                    "male",
                    "female"
                ]
            }
        ]
    }
}
```