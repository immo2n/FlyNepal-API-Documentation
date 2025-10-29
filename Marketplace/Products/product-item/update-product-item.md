### Endpoint: PUT | http://{{ip}}/v1/products/3/items/2

Payload:

```json 
{
    "productItemId": 0,
    "detail": "Under wear",
    "stock": 0,
    "price": 0,
    "extraDescription": "Under garments",
    "discount": 0,
    "subDescription": "Half pant type under wear",
    "soldUnit": 0,
    "variant": [
        {
            "name": "w shaped",
            "value": "30"
        }
    ],
    "currency": "20",
    "unit": "USD"
}
```

Response:
```json
{
    "success": true,
    "message": "Product Item updated sucessfully",
    "data": {
        "createdAt": "2025-10-29T19:29:44.732981Z",
        "updatedAt": "2025-10-29T19:50:24.067369424Z",
        "id": 2,
        "skuCode": "FN-STRING-string-75873",
        "detail": "Under wear",
        "stock": 0,
        "price": 0.0,
        "extraDescription": "Under garments",
        "discount": 0.0,
        "subDescription": "Half pant type under wear",
        "soldUnit": null,
        "variant": {
            "w shaped": "30"
        },
        "currency": "20",
        "unit": "USD",
        "deleted": false
    }
}
```
