### Endpoint
```
PUT: /v1/categories/attributes/{attributeId}
```

### Payload
```
{
  "user": "Sp7W7K6aAAGG",
  "label": "Color",
  "name": "Color",
  "values": [
    "yellow",
    "green",
    "blue"
  ]
}
```

- Clue: the user is the logged in user's user(id) you can see the Profile/Get.md to get this!

### Responses
Successfully done
```json
{
    "success": true,
    "message": "Attribute updated sucessfully",
    "data": {
        "createdAt": "2025-10-11T06:29:17.314106Z",
        "updatedAt": "2025-10-11T06:53:06.827953814Z",
        "id": 2,
        "name": "Color",
        "label": "Color",
        "values": [
            "yellow",
            "green",
            "blue"
        ]
    }
}
```