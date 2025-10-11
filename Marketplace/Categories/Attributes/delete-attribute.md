### Endpoint
```
DELETE: /v1/categories/attributes/{attributeId}
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
    "message": "Attribute deleted successfully"
}
```