### Endpoint
```
POST: /v1/products
```

### Payload
```json
{
  "title": "Men's Cotton T-Shirt",
  "description": "A premium cotton t-shirt that offers comfort and durability for everyday wear.",
  "commissionRates": "2%",
  "category": 7,
  "vendor": 2,
  "instruction": "Machine wash cold, do not bleach, tumble dry low.",
  "tagInfo": "CLOTHING, T-SHIRT, CASUAL",
  "materialsUsed": "100% Cotton",
  "mainImage": "8e253a65-7eef-4c14-83ab-deec5d08173a",
  "imageList": [
  "8e253a65-7eef-4c14-83ab-deec5d08173a"
  ],
  "productItemRequest": [
    {
      "productItemId": 12345,
      "detail": "Soft and breathable round-neck cotton t-shirt for men.",
      "stock": 120,
      "price": 19.99,
      "extraDescription": "Perfect for summer wear. Available in multiple colors and sizes.",
      "discount": 5.0,
      "subDescription": "Men's Regular Fit T-Shirt",
      "soldUnit": 45,
      "variant": [
        {
          "name": "Color",
          "value": "Black"
        },
        {
          "name": "Size",
          "value": "M"
        }
      ],
      "currency": "USD",
      "unit": "pcs"
    }
  ]
}
```

PLEAE PLEASE PLEASE READ...
```txt
1. Here, mainImage and imageList are id of media image, see upload-a-file.md under Media. You upload the files and put their id's here.

3. Category must exists, its id of user's created category.
4. To get atttributes, you can see get-attribute-by-user.md so you can list the attributes created by the user.
```

### Responses
Successfully
```json
{
    "success": true,
    "message": "Product created successfully",
    "data": {
        "id": 4,
        "title": "Men's Cotton T-Shirt",
        "description": "A premium cotton t-shirt that offers comfort and durability for everyday wear.",
        "commissionRates": "2%",
        "rating": null,
        "category": {
            "id": 7,
            "name": "Clothings",
            "attributes": [
                {
                    "id": 3,
                    "name": "Color",
                    "label": "Color",
                    "values": [
                        "yellow",
                        "green",
                        "blue"
                    ]
                }
            ]
        },
        "vendor": {
            "id": 2,
            "name": "RedLeaf Supplies Ltd",
            "description": "Leading provider of eco-friendly office and packaging supplies with a focus on sustainability and quality.",
            "contactInfo": "John Carter, Procurement Manager",
            "vendorType": "OTHERS",
            "phone": "+1-555-987-6543",
            "email": "contact@greenleafsupplies.com",
            "address": "123 Eco Street, Green City, USA",
            "website": "https://greenleafsupplies.com",
            "location": "Green City, USA",
            "logoUrl": null,
            "businessCertificateUrl": null
        },
        "productItems": [
            {
                "productItemId": 3,
                "skuCode": "FN-COLOR-Black-19924",
                "detail": "Soft and breathable round-neck cotton t-shirt for men.",
                "stock": 120,
                "price": 19.99,
                "extraDescription": "Perfect for summer wear. Available in multiple colors and sizes.",
                "discount": 5.0,
                "subDescription": "Men's Regular Fit T-Shirt",
                "soldUnit": null,
                "variant": {
                    "color": "Black",
                    "size": "M"
                },
                "currency": "USD",
                "unit": "pcs"
            }
        ],
        "instruction": "Machine wash cold, do not bleach, tumble dry low.",
        "tagInfo": "CLOTHING, T-SHIRT, CASUAL",
        "materialsUsed": "100% Cotton",
        "mainImage": {
            "id": "8e253a65-7eef-4c14-83ab-deec5d08173a",
            "originalUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/an image/images_182b5e79.jpg",
            "thumbnailUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/an image/thumbnails/images_182b5e79.jpg"
        },
        "images": [
            {
                "id": "8e253a65-7eef-4c14-83ab-deec5d08173a",
                "originalUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/an image/images_182b5e79.jpg",
                "thumbnailUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/an image/thumbnails/images_182b5e79.jpg"
            }
        ],
        "topReviews": null
    }
}
```