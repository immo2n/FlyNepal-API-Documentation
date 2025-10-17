
# Flight Search API (v2)

## Endpoint

**POST** `/v2/flights/search`

## Overview

Search for international round-trip flights (e.g., Dhaka ↔ Dubai) from various providers, with flexible options for cabin class, connections, passengers, and dates.

---

## Request

Send a **POST** request with a JSON payload:

### Example Payload

```json
{
    "provider": "duffel",
    "cabinClass": "economy",
    "currency": "USD",
    "maxConnections": 2,
    "passengers": {
        "adult": 1,
        "child": 0,
        "infant": 0
    },
    "slices": [
        {
            "origin": "DAC",
            "destination": "DXB",
            "departureDate": "2025-11-20"
        },
        {
            "origin": "DXB",
            "destination": "DAC",
            "departureDate": "2025-12-20"
        }
    ]
}
```

---

## Response

A successful search returns a list of flight offers. Each offer includes price, flight details, baggage info, etc.

### Example Response

```json
{
    "success": true,
    "offers": [
        {
            "provider": "duffel",
            "offerId": "off_0000Ayhyupq0Aidfkm0FiZ",
            "totalPrice": {
                "amount": "1060.80",
                "currency": "USD"
            },
            "slices": [
                {
                    "sliceId": "sli_0000Ayhyupq0Aidfkm0FiT",
                    "segments": [
                        {
                            "flightNumber": "0284",
                            "airline": "Kuwait Airways",
                            "origin": { "code": "DAC", "name": "Dhaka Shahjalal International Airport", "city": "Dhaka" },
                            "destination": { "code": "KWI", "name": "Kuwait International Airport", "city": "Kuwait City" },
                            "departureTime": "2025-10-05T03:00",
                            "arrivalTime": "2025-10-05T06:00",
                            "duration": "PT6H",
                            "stops": 0
                        },
                        // More segments...
                    ]
                },
                // Return slice...
            ],
            "includedBaggage": {
                "carryOn": 1,           // Number of carry-on bags included
                "checked": 1            // Number of checked bags included
            }
        },
        // More offers...
    ]
}
```

---

## Key Fields Explained

| Field                | Description                                                                                  |
|----------------------|---------------------------------------------------------------------------------------------|
| `provider`           | The service providing the offer (e.g., "duffel").                                           |
| `offerId`            | Unique ID for the offer, used for booking.                                                  |
| `totalPrice`         | Total price for all passengers, including taxes/fees.                                       |
| `slices`             | Each slice represents a leg of the trip (outbound/return).                                  |
| `segments`           | Flights within a slice (may include layovers/connections).                                  |
| `flightNumber`       | Airline flight number.                                                                      |
| `airline`            | Name of the airline operating the segment.                                                  |
| `origin`/`destination` | Airport info: code (IATA), name, city.                                                    |
| `departureTime`      | Scheduled flight departure (ISO 8601 format, local time).                                   |
| `arrivalTime`        | Scheduled flight arrival (ISO 8601 format, local time).                                     |
| `duration`           | Duration of the segment (`PT5H17M` = 5 hours 17 minutes).                                  |
| `stops`              | Number of stops during the segment (0 = nonstop).                                           |
| `includedBaggage`    | Carry-on and checked bags included with the ticket.                                         |

---

## Example: Offer Comparison

| Offer | Price (USD) | Airline(s)        | Outbound Route               | Return Route                  | Baggage    |
|-------|-------------|-------------------|------------------------------|-------------------------------|------------|
| 1     | 1060.80     | Kuwait Airways    | DAC → KWI → DXB              | DXB → KWI → DAC               | 1 carry-on, 1 checked |
| 2     | 737.49      | Duffel Airways    | DAC → DXB (nonstop)          | DXB → DAC (nonstop)           | 1 carry-on, 1 checked |

---

## Tips for Users

- **Compare offers:** Look at airlines, layovers, and baggage included to choose the best option.
- **Check times:** Flight times are in local time; verify connections and layover durations.
- **Offer ID:** Use the `offerId` to book or get more details about a specific flight.
- **Baggage:** Each offer specifies included baggage; extra baggage may require additional fees.

---

## Error Handling

If the search fails, you will receive:

```json
{
    "success": false,
    "error": "Description of the issue"
}
```

---

## Glossary

- **Slice:** A trip leg (outbound, return, multi-city).
- **Segment:** An individual flight within a slice.
- **Offer:** A complete round-trip itinerary with pricing and baggage details.

---

*For more details or help, contact API support or refer to the full API documentation.*
