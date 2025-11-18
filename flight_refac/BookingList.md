# API Documentation: Get Flight Bookings

## Endpoint

```
GET /v2/flight/bookings?page=0&size=10&provider=duffel&status=cancelled
```
[N.B. Here pagination, provider and status params are optional]
---

## Description

Retrieves a list of all flight bookings. Each booking entry contains information such as booking reference, provider, order ID, status, total amount, currency, and timestamps.

---

## Request

### HTTP Method

- `GET`

### URL

- `/v2/flights/bookings`

### Query Parameters

- _None._

### Headers

- _Typical authentication headers may be required (e.g., `Authorization: Bearer <token>`), if applicable._

---

## Response

### Status Code

- `200 OK` — Successfully retrieved the list of bookings.

### Response Body

Returns a JSON array of booking objects.

#### Example Response

```json
[
    {
        "id": 3,
        "bookingReference": "LZW78W",
        "provider": "duffel",
        "orderId": "ord_0000AyzrYtaF6nZ6vjNHFY",
        "userId": null,
        "status": "issued",
        "totalAmount": 1514.26,
        "currency": "USD",
        "createdAt": "2025-10-08T10:46:24.71035",
        "updatedAt": null
    },
    {
        "id": 2,
        "bookingReference": "R3AWYW",
        "provider": "duffel",
        "orderId": "ord_0000AyzrLbyBHl6iXMElAG",
        "userId": null,
        "status": "booked",
        "totalAmount": 1514.26,
        "currency": "USD",
        "createdAt": "2025-10-08T10:44:00.664698",
        "updatedAt": null
    },
    {
        "id": 1,
        "bookingReference": "BYUIPF",
        "provider": "duffel",
        "orderId": "ord_0000AyzVBdRlvQBWj8u2xE",
        "userId": null,
        "status": "cancelled",
        "totalAmount": 1511.98,
        "currency": "USD",
        "createdAt": "2025-10-08T06:35:41.85675",
        "updatedAt": null
    }
]
```

---

### Booking Object Fields

| Field             | Type      | Description                                                                                                               |
|-------------------|-----------|---------------------------------------------------------------------------------------------------------------------------|
| `id`              | integer   | Unique identifier for the booking.                                                                                        |
| `bookingReference`| string    | Booking reference code, usually a 6-character string.                                                                     |
| `provider`        | string    | Name of the booking provider (e.g., "duffel").                                                                            |
| `orderId`         | string    | Provider's order ID.                                                                                                      |
| `userId`          | integer\|null | ID of the user who made the booking, if available.                                                                |
| `status`          | string    | The booking status (e.g., `"issued"`, `booked` or `cancelled`).                                                   |
| `totalAmount`     | number    | Total cost of the booking.                                                                                                |
| `currency`        | string    | Currency code (e.g., "USD").                                                                                              |
| `createdAt`       | string    | Timestamp when the booking was created (ISO 8601 format).                                                                 |
| `updatedAt`       | string\|null | Timestamp when the booking was last updated (ISO 8601 format), or `null` if not updated.                           |

---

## Notes

- The `status` field can be a simple string (e.g., `"issued"`).
- `userId` can be `null` if the booking is not linked to a specific user.
- `updatedAt` may be `null` for new bookings.

---

## Error Codes

- `401 Unauthorized` — If authentication is required and the request lacks proper credentials.
- `500 Internal Server Error` — If an unexpected error occurs on the server.

---

## Example Usage

```http
GET /v2/flights/bookings HTTP/1.1
Host: api.example.com
Authorization: Bearer YOUR_ACCESS_TOKEN
```

---

## Changelog

- **2025-10-08**: Initial documentation.
