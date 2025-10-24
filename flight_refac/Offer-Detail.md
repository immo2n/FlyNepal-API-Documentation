# International Flight Offer Detail API (v2)

## Endpoint

**GET** `/v2/flight/offer/detail?offerId={{offerId}}&provider=duffel`

---

## Overview

Retrieve the full details for a specific flight offer, including price, conditions (refund, change policies), passengers, flight segments, and baggage.

---

## How to Use

1. **Obtain an Offer ID**  
   - First, use the `/v2/flights/international/search` endpoint to get a list of offers.
   - Select an offer and copy its `offerId`.

2. **Request Details**
   - Make a **POST** request to `/v2/flights/international/offer/detail` with the provider and offerId as query parameters.

### Example Request

```
POST /v2/flights/international/offer/detail?provider=duffel&offerId=off_0000AyjvSnortp7Jbtlluf
```

---

## Response

Returns detailed information about the selected offer.

### Example Response

```json
{
  "success": true,
  "offer": {
    "id": "off_0000AyjvSnortp7Jbtlluf",
    "price": {
      "amount": "7007.60",
      "currency": "USD",
      "display": "USD 7007.60"
    },
    "conditions": {
      "fees": {
        "dateChange": { "allowed": false, "amount": null },
        "cancellation": { "allowed": false, "amount": null },
        "seatChange": { "allowed": false, "amount": null }
      },
      "meal": null
    },
    "passengers": [
      {
        "id": "pas_0000AyjvSZasn1bxUT7PAR",
        "type": "adult",
        "baggage": { "carryOn": 1, "checked": 1 }
      },
      // More passengers...
    ],
    "slices": [
      {
        "sliceId": "sli_0000AyjvSnortp7JbtlluT",
        "segments": [
          {
            "flightNumber": "0639",
            "airline": "Qatar Airways",
            "origin": { "code": "DAC", "name": "Dhaka Shahjalal International Airport" },
            "destination": { "code": "DOH", "name": "Hamad International Airport" },
            "departureTime": "2025-10-05T04:00",
            "arrivalTime": "2025-10-05T06:25",
            "duration": "PT5H25M"
          },
          // More segments...
        ]
      },
      // Return slice...
    ],
    "metadata": {
      "createdAt": "2025-09-30T18:14:44.972323",
      "expiresAt": "2025-09-30T19:18:00.630875",
      "source": "Duffel API"
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
