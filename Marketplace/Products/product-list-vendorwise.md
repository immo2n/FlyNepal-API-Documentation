## There are different types of filtering available here:

### Basic Request: 
GET http://localhost:8080/v1/products/vendor/123

### With pagination: 
GET http://localhost:8080/v1/products/vendor/123?page=0&size=10
GET http://localhost:8080/v1/products/vendor/123?page=1&size=20
GET http://localhost:8080/v1/products/vendor/123?page=2&size=5

### Pagination + Sorting Combined
GET http://localhost:8080/v1/products/vendor/123?page=0&size=10&sort=createdAt,desc
GET http://localhost:8080/v1/products/vendor/123?page=1&size=15&sort=title,asc
GET http://localhost:8080/v1/products/vendor/123?page=0&size=20&sort=rating,desc

Sample response:

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
                    "productItemId": 3,
                    "skuCode": "FN-UNDER WEAR-30-13122",
                    "detail": "Half pant",
                    "stock": 0,
                    "price": 0.0,
                    "extraDescription": "Half pant",
                    "discount": 0.0,
                    "subDescription": "Half pant",
                    "soldUnit": null,
                    "variant": {
                        "under wear": "30"
                    },
                    "currency": "100",
                    "unit": "USD"
                },
                {
                    "productItemId": 4,
                    "skuCode": "FN-UNDER WEAR-30-57244",
                    "detail": "Half pant",
                    "stock": 0,
                    "price": 0.0,
                    "extraDescription": "Half pant",
                    "discount": 0.0,
                    "subDescription": "Half pant",
                    "soldUnit": null,
                    "variant": {
                        "under wear": "30"
                    },
                    "currency": "100",
                    "unit": "USD"
                },
                {
                    "productItemId": 2,
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
                    "unit": "USD"
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
