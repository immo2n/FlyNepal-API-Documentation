### Endpoint
```
GET: /v1/vendors/
```

### Parameters
1. page - integer($int32) (query)
Page number (zero-based)
Default value : 0

2. size - integer($int32)(query)
Number of records per page
Default value : 10

3. sort - string(query)
Sort field in the format: field,direction. Example: createdAt,desc
Default value : createdAt,desc

### Responses
Successfully
```
{
    "success": true,
    "data": [
        {
            "id": 2,
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
        }
    ],
    "pagination": {
        "page": 0,
        "size": 10,
        "totalElements": 1,
        "totalPages": 1
    }
}