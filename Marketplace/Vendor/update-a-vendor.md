### Endpoint
```
PUT: /v1/vendors/{id}
```

- clue: the id of the targeted vendor!

### Payload
```json
{
  "user": "Sp7W7K6aAAGG",
  "name": "RedLeaf Supplies Ltd",
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

- Clue: except for user, all other values are nullable so, you send only which are updated. like,

```json
{
  "user": "Sp7W7K6aAAGG",
  "name": "RedLeaf Supplies Ltd"
}
```
You will get
```json
{
    "success": true,
    "message": "Vendor updated sucessfully",
    "data": {
        "createdAt": "2025-10-08T14:47:02.751957Z",
        "updatedAt": "2025-10-08T15:08:27.689649511Z",
        "id": 2,
        "name": "YellowLeaf Supplies Ltd",
        "description": "Leading provider of eco-friendly office and packaging supplies with a focus on sustainability and quality.",
        "contactInfo": "John Carter, Procurement Manager",
        "vendorType": "OTHERS",
        "phone": "+1-555-987-6543",
        "email": "contact@greenleafsupplies.com",
        "address": "123 Eco Street, Green City, USA",
        "website": "https://greenleafsupplies.com",
        "location": "Green City, USA",
        "logo": null,
        "businessCertificate": null,
        "owner": {
            "createdAt": "2025-08-31T12:29:40.766908Z",
            "updatedAt": "2025-10-08T09:42:49.783646Z",
            "id": 8,
            "user": "Sp7W7K6aAAGG",
            "fullName": "Moon Monoar",
            "email": "immo2n.work@gmail.com",
            "otpHash": "1LA6zvisoz72fSHg6gA6IIcV2sn/v+TDeK9OG4k0ESs=",
            "userToken": "RYdbzlFvDZXUvnATmRI8gHTm79lDATmj",
            "phoneNumber": null,
            "userVerified": true,
            "profilePicture": null,
            "dateOfBirth": null,
            "nationality": null,
            "addresses": [],
            "fcmToken": null
        }
    }
}
```

### Responses
Successfully done
```json
{
    "success": true,
    "message": "Vendor updated sucessfully",
    "data": {
        "createdAt": "2025-10-08T14:47:02.751957Z",
        "updatedAt": "2025-10-08T15:08:27.689649511Z",
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
        "logo": null,
        "businessCertificate": null,
        "owner": {
            "createdAt": "2025-08-31T12:29:40.766908Z",
            "updatedAt": "2025-10-08T09:42:49.783646Z",
            "id": 8,
            "user": "Sp7W7K6aAAGG",
            "fullName": "Moon Monoar",
            "email": "immo2n.work@gmail.com",
            "otpHash": "1LA6zvisoz72fSHg6gA6IIcV2sn/v+TDeK9OG4k0ESs=",
            "userToken": "RYdbzlFvDZXUvnATmRI8gHTm79lDATmj",
            "phoneNumber": null,
            "userVerified": true,
            "profilePicture": null,
            "dateOfBirth": null,
            "nationality": null,
            "addresses": [],
            "fcmToken": null
        }
    }
}
```