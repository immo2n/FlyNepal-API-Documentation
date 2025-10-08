### Endpoint
```
POST: /v1/vendors
```

### Payload
```
{
  "user": "Sp7W7K6aAAGG",
  "name": "GreenLeaf Supplies Ltd",
  "description": "Leading provider of eco-friendly office and packaging supplies with a focus on sustainability and quality.",
  "contactInfo": "John Carter, Procurement Manager",
  "vendorType": "OFFICE_SUPPLIES",
  "phone": "+1-555-987-6543",
  "email": "contact@greenleafsupplies.com",
  "address": "123 Eco Street, Green City, USA",
  "website": "https://greenleafsupplies.com",
  "location": "Green City, USA"
}
```

- Clue: the user is the logged in user's user(id) you can see the Profile/Get.md to get this!

### Responses
Successfully done
```
{
    "success": true,
    "message": "Vendor created successfully",
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