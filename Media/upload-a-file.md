# Create Hold Booking API

## Endpoint
```
POST /v1/media/upload
```

## Description
To upload file for using as Media is various places

---

## Request Body (multipart/form-data)

```json
{
    "file": BINARY_FILE - IMAGE or ANYTHING,
    "category": "products/services/certificates/users/others",
    "identifier": "an_identified" (NON_SPACE_UNIQUE_STRING)-you can use anything, but dont use user id! - maybe a unique string
    "acl": "public-read" (optional)
}
```

### Response
```json
{
    "createdAt": "2025-10-12T14:26:37.147985367Z",
    "updatedAt": "2025-10-12T14:26:37.147985367Z",
    "id": "8e253a65-7eef-4c14-83ab-deec5d08173a",
    "originalUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/an_identified/images_182b5e79.jpg",
    "thumbnailUrl": "https://flynepal-dev-bucket.s3.us-east-2.amazonaws.com/others/an_identified/thumbnails/images_182b5e79.jpg",
    "fileName": "images.jpg",
    "fileSize": 8525,
    "contentType": "IMAGE",
    "mediaType": "OTHER"
}
```