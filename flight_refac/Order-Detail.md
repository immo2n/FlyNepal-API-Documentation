# International Flight Offer Detail API (v2)

## Endpoint

**GET** `/v2/flight/international/order/detail?orderId={{orderId}}&provider=duffel`

---

## Overview

Retrieve the full details for a specific flight offer, including price, conditions (refund, change policies), passengers, flight segments, and baggage.

---

## How to Use

1. **Obtain an Offer ID**  
   - First, use the `/v2/flights/international/book` endpoint to create a booking.
   - Select the order and copy its `orderId`.

2. **Request Details**
   - Make a **GET** request to `/v2/flights/international/order/detail` with the provider and offerId as query parameters.

### Example Request

```
POST /v2/flights/international/order/detail?orderId=ord_0000AyzVBdRlvQBWj8u2xE&provider=duffel
```

---

## Response

Returns detailed information about the selected offer.

### Example Response

```json
{
    "success": true,
    "order": {
        "id": "ord_0000AyzVBdRlvQBWj8u2xE",
        "price": {
            "amount": "1511.98",
            "currency": "USD",
            "display": "USD 1511.98"
        },
        "passengers": [
            {
                "id": "pas_0000AyzV5e2F9ifHjuQN7d",
                "type": "child",
                "baggage": {}
            },
            {
                "id": "pas_0000AyzV5e2F9ifHjuQN7b",
                "type": "adult",
                "baggage": {}
            },
            {
                "id": "pas_0000AyzV5e2F9ifHjuQN7e",
                "type": "infant_without_seat",
                "baggage": {}
            },
            {
                "id": "pas_0000AyzV5e2F9ifHjuQN7c",
                "type": "child",
                "baggage": {}
            }
        ],
        "slices": [
            {
                "id": "sli_0000AyzVBdRlvQBWj8u2xF",
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
                    "dateTime": "2025-11-05T01:00",
                    "date": "2025-11-05",
                    "time": "01:00"
                },
                "arrival": {
                    "dateTime": "2025-11-05T04:25",
                    "date": "2025-11-05",
                    "time": "04:25"
                },
                "duration": "PT5H25M",
                "airline": {
                    "name": "Emirates",
                    "flightNumber": "585",
                    "logo": "https://assets.duffel.com/img/airlines/for-light-background/full-color-logo/EK.svg"
                }
            },
            {
                "id": "sli_0000AyzVBdRlvQBWj8u2xH",
                "origin": {
                    "code": "DXB",
                    "name": "Dubai International Airport",
                    "city": "Dubai"
                },
                "destination": {
                    "code": "DAC",
                    "name": "Dhaka Shahjalal International Airport",
                    "city": "Dhaka"
                },
                "departure": {
                    "dateTime": "2025-12-05T10:30",
                    "date": "2025-12-05",
                    "time": "10:30"
                },
                "arrival": {
                    "dateTime": "2025-12-05T17:00",
                    "date": "2025-12-05",
                    "time": "17:00"
                },
                "duration": "PT4H30M",
                "airline": {
                    "name": "Emirates",
                    "flightNumber": "586",
                    "logo": "https://assets.duffel.com/img/airlines/for-light-background/full-color-logo/EK.svg"
                }
            }
        ],
        "conditions": {
            "refundable": false,
            "changeable": false
        },
        "metadata": {
            "createdAt": "2025-10-08T06:35:41.856750",
            "updatedAt": null
        }
    }
}
```

---

## Key Fields Explained

| Field            | Description                                                                                         |
|------------------|----------------------------------------------------------------------------------------------------|
| `id`             | Unique ID for the flight offer                                                                      |
| `price`          | Pricing information (total amount, currency, formatted display)                                     |
| `conditions`     | Change, cancellation, and seat change policies (allowed or not, any associated fees)                |
| `passengers`     | List of passengers included in the offer, with baggage allowance                                    |
| `slices`         | Each slice represents a trip leg (outbound/return)                                                  |
| `segments`       | Individual flights within a slice, including airline, flight number, origin/destination, timings    |
| `metadata`       | When the offer was created/expires, plus the data source                                            |

---

## Example: Offer Details Breakdown

| Field            | Example Value                    | Notes                                   |
|------------------|----------------------------------|-----------------------------------------|
| Price            | USD 7007.60                      | Total for all passengers                |
| Change Fees      | Not allowed                      | No changes are permitted                |
| Cancellation     | Not allowed                      | No refunds for cancellation             |
| Passengers       | 2 adults                         | Each with 1 carry-on, 1 checked bag     |
| Outbound Route   | DAC → DOH → DXB                  | Via Qatar Airways                       |
| Return Route     | DXB → DOH → DAC                  | Via Qatar Airways                       |
| Offer Created    | 2025-09-30T18:14:44              | Data timestamp                          |
| Offer Expires    | 2025-09-30T19:18:00              | When offer is no longer valid           |

---

## Tips for Users

- **Check Conditions:**  
  See if changes, cancellations, or seat changes are allowed for your ticket.
- **Review Baggage:**  
  Baggage allowances are listed per passenger.
- **Verify Flight Details:**  
  Each segment lists flight number, airline, timings, and airports.
- **Offer Validity:**  
  Be aware of the `expiresAt` field—book before the offer expires!

---

## Error Handling

If the request fails, you will receive:

```json
{
  "success": false,
  "error": "Description of the issue"
}
```

---

## Glossary

- **Offer:** Complete flight itinerary, price, passenger, and policy info.
- **Slice:** A trip leg (outbound, return, or multi-city).
- **Segment:** An individual flight within a slice.

---

*For more details or help, contact API support or refer to the full API documentation.*
