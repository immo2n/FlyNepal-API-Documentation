### Endpoint
```
URL: GET | /v1/products
```
Response: 
```json
{
    "success": true,
    "data": [
        {
            "id": 3,
            "title": "Men's Cotton T-Shirt",
            "description": "A premium cotton t-shirt that offers comfort and durability for everyday wear.",
            "commissionRates": "2%",
            "rating": null,
            "category": {
                "id": 1,
                "name": "Clothings",
                "attributes": [
                    {
                        "id": 1,
                        "name": "size",
                        "label": "size",
                        "values": [
                            "m",
                            "xl",
                            "xxl"
                        ]
                    }
                ]
            },
            "vendor": {
                "id": 1,
                "name": "GreenLeaf Supplies Ltd",
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
                    "productItemId": 1,
                    "skuCode": "FN-COLOR-Black-94481",
                    "detail": "Soft and breathable round-neck cotton t-shirt for men.",
                    "stock": 120,
                    "price": 19.99,
                    "extraDescription": "Perfect for summer wear. Available in multiple colors and sizes.",
                    "discount": 5.0,
                    "subDescription": "Men's Regular Fit T-Shirt",
                    "soldUnit": null,
                    "variant": {
                        "size": "M",
                        "color": "Black"
                    },
                    "currency": "USD",
                    "unit": "pcs"
                }
            ],
            "instruction": "Machine wash cold, do not bleach, tumble dry low.",
            "tagInfo": "CLOTHING, T-SHIRT, CASUAL",
            "materialsUsed": "100% Cotton",
            "mainImage": {
                "id": "62cd4c5e-54b4-428a-8796-38f5e1f326eb",
                "originalUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/abcd/pant_9cad5d36.jpg",
                "thumbnailUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/abcd/thumbnails/pant_9cad5d36.jpg"
            },
            "images": [
                {
                    "id": "62cd4c5e-54b4-428a-8796-38f5e1f326eb",
                    "originalUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/abcd/pant_9cad5d36.jpg",
                    "thumbnailUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/abcd/thumbnails/pant_9cad5d36.jpg"
                }
            ],
            "topReviews": null
        }
    ],
    "pagination": {
        "page": 0,
        "size": 10,
        "totalElements": 1,
        "totalPages": 1
    }
}
```
