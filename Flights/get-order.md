# Get International Flight Order

Retrieve details of an international flight booking order by its unique identifier.

---

## HTTP Request

`GET /flights/international/orders/get/{orderId}`

**Path Parameters:**
- `orderId` (string) – Unique identifier of the flight order to retrieve.

**Example Request:**
```http
GET http://{{ip}}/api/flights/international/orders/get/ord_0000AyL5mibhytO9oO4DIG
```

---

## Response

**Status Code:** `200 OK`

**Response Body:**
```json
{
  "success": true,
  "order": {
    "id": "ord_0000AyL5mibhytO9oO4DIG",
    "bookingReference": "WUKBJU",
    "price": {
      "amount": "635.27",
      "currency": "USD",
      "display": "USD 635.27"
    },
    "passengers": [
      {
        "id": "pas_0000AyL45mSBhk1PKpZkCA",
        "type": "adult",
        "baggage": {}
      },
      {
        "id": "pas_0000AyL45mSBhk1PKpZkCB",
        "type": "adult",
        "baggage": {}
      },
      {
        "id": "pas_0000AyL45mSBhk1PKpZkCC",
        "type": "child",
        "baggage": {}
      },
      {
        "id": "pas_0000AyL45mSBhk1PKpZkCD",
        "type": "infant_without_seat",
        "baggage": {}
      }
    ],
    "slices": [
      {
        "id": "sli_0000AyL45mhQn4DO66huxF",
        "origin": {
          "code": "DAC",
          "name": "Dhaka Shahjalal International Airport",
          "city": "Dhaka"
        },
        "destination": {
          "code": "DXB",
          "name": "Dubai International Airport",
          "city": "Dubai"
        },
        "departure": {
          "dateTime": "2025-11-29T21:40",
          "date": "2025-11-29",
          "time": "21:40"
        },
        "arrival": {
          "dateTime": "2025-11-30T00:57",
          "date": "2025-11-30",
          "time": "00:57"
        },
        "duration": "PT5H17M",
        "airline": {
          "name": "Duffel Airways",
          "flightNumber": "6750",
          "logo": "https://assets.duffel.com/img/airlines/for-light-background/full-color-logo/ZZ.svg"
        }
      }
    ],
    "conditions": {
      "refundable": false,
      "changeable": false
    },
    "metadata": {
      "createdAt": "2025-09-18T18:42:36.991916",
      "updatedAt": null
    }
  }
}
```

### Response Attributes

- `success` (boolean): Indicates request status.
- `order` (object):
  - `id` (string): Order unique identifier.
  - `bookingReference` (string): Booking reference code.
  - `price` (object): Pricing details.
    - `amount` (string): Price amount.
    - `currency` (string): Currency code.
    - `display` (string): Formatted price.
  - `passengers` (array): List of passenger objects.
    - `id` (string): Passenger unique identifier.
    - `type` (string): Passenger type (`adult`, `child`, `infant_without_seat`).
    - `baggage` (object): Baggage details (structure may vary).
  - `slices` (array): Flight segment(s).
    - `id` (string): Slice unique identifier.
    - `origin` (object): Departure airport details (`code`, `name`, `city`).
    - `destination` (object): Arrival airport details (`code`, `name`, `city`).
    - `departure` (object): Departure details (`dateTime`, `date`, `time`).
    - `arrival` (object): Arrival details (`dateTime`, `date`, `time`).
    - `duration` (string): Flight duration in ISO8601 format.
    - `airline` (object): Airline information (`name`, `flightNumber`, `logo`).
  - `conditions` (object):
    - `refundable` (boolean): Is the order refundable.
    - `changeable` (boolean): Is the order changeable.
  - `metadata` (object):
    - `createdAt` (string): ISO8601 timestamp of order creation.
    - `updatedAt` (string|null): ISO8601 timestamp of last update (if any).

---

## Notes

- Make sure to replace `{{ip}}` with your API server address.
- This endpoint returns details for a specific international flight order.
