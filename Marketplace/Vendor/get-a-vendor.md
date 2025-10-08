### Endpoint
```
GET: /v1/vendors/{id}
```
- id: the vendor ID! Ex: 2

### Responses
Successfully
```
{
    "success": true,
    "data": {
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
}