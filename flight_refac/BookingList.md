# API Documentation: Get Flight Bookings

## Endpoint

```
GET /v2/flights/bookings
```

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

```
