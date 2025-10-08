# International Flight Offer Seat Map API (v2)

## Endpoint

**GET** `/v2/flights/international/offer/seat-map?provider=duffel&offerId={{offerId}}`

---

## Overview

Get a detailed seat map for a specific flight offer, including seat availability, characteristics, and extra services (e.g., paid seat selection).

---

## How to Use

1. **Obtain an Offer ID**  
   - Use `/v2/flights/international/search` to find offers.
   - Select an offer and copy its `offerId`.

2. **Get the Seat Map**
   - Make a **GET** request to `/v2/flights/international/offer/seat-map` with the provider and offerId as query parameters.

### Example Request

```
GET /v2/flights/international/offer/seat-map?provider=duffel&offerId=off_0000AytSm7IEAM8ohZdrs4
```

---

## Response

Returns available and unavailable seats for each flight segment, with detailed info about each seat and cabin.

### Example Response

```json
{
  "success": true,
  "offerId": "off_0000AytSm7IEAM8ohZdrs4",
  "seatMaps": [
    {
      "id": "sea_0000AytTE7AreFtWgb58pU",
      "segmentId": "seg_0000AytSm7IEAM8ohZdrs0",
      "sliceId": "sli_0000AytSm7IEAM8ohZdrs1",
      "cabins": [
        {
          "cabinClass": "economy",
          "aisles": 2,
          "deck": 0,
          "totalRows": 27,
          "maxColumns": 3,
          "rows": [
            {
              "sections": [
                {
                  "elements": [
                    {
                      "type": "seat",
                      "designator": "28A",
                      "available": false
                    },
                    {
                      "type": "seat",
                      "designator": "28C",
                      "available": true,
                      "characteristics": "Passenger must be an adult",
                      "availableServices": [
                        {
                          "id": "ase_0000AytTE77JrR3iVbQJIu",
                          "passengerId": "pas_0000AytSm74Ozl5A0hApJz",
                          "totalAmount": 27.14,
                          "totalCurrency": "USD"
                        }
                      ],
                      "disclosures": [
                        "Passenger must be an adult"
                      ]
                    }
                  ]
                }
                // More sections, seats, and other elements
              ]
            }
            // More rows
          ]
        }
        // More cabins if available
      ]
    }
    // More seat maps for other segments of the trip
  ],
  "metadata": {
    "seatMapCount": 2
  },
  "totalCabins": 2,
  "cabinClasses": [
    "economy"
  ]
}
```

---

## Key Fields Explained

| Field             | Description                                                                              |
|-------------------|-----------------------------------------------------------------------------------------|
| `success`         | Indicates if the request was successful                                                 |
| `offerId`         | The flight offer ID the seat map refers to                                              |
| `seatMaps`        | List of seat maps for each flight segment                                               |
| `segmentId`       | The flight segment this seat map belongs to                                             |
| `sliceId`         | The slice (trip leg) for the seat map                                                   |
| `cabins`          | Array of cabins (e.g., economy, business) and their seat layouts                        |
| `rows`            | Rows within the cabin, each with multiple sections                                      |
| `sections`        | Seat or non-seat elements (e.g., aisle, galley) within a row                            |
| `elements`        | Individual seats or features; for seats:                                                |
|                   | - `type`: "seat" or other (e.g., "galley")                                             |
|                   | - `designator`: Seat label (e.g., "28C")                                                |
|                   | - `available`: Whether the seat can be selected                                         |
|                   | - `characteristics`: Special requirements (e.g., must be an adult)                      |
|                   | - `availableServices`: List of extra paid services for seat selection                    |
|                   | - `disclosures`: Warnings/restrictions for the seat                                     |
| `metadata`        | Extra info (e.g., number of seat maps returned)                                         |
| `totalCabins`     | Total number of cabins (sections like economy, business, etc.)                          |
| `cabinClasses`    | List of cabin classes included                                                          |

---

## Example: Seat Availability

| Seat   | Available | Characteristics                | Price (USD) | Disclosures                |
|--------|-----------|-------------------------------|-------------|----------------------------|
| 28A    | No        | None                          | N/A         | None                       |
| 28C    | Yes       | Passenger must be an adult    | $27.14      | "Passenger must be an adult"|
| 28E    | Yes       | Passenger must be an adult    | $27.14      | "Passenger must be an adult"|
| 28F    | Yes       | None                          | $27.14      | None                       |

---

## Tips for Users

- **Find Available Seats:**  
  Look for seats with `"available": true`.
- **Check Price & Restrictions:**  
  Some seats may require extra payment or have restrictions (e.g., adult only).
- **Multiple Segments:**  
  Each segment/leg of your journey may have its own seat map.
- **Cabin Classes:**  
  Seat maps may support multiple cabin classes—economy, business, etc.

---

## Error Handling

If the request fails, you will receive:

```json
{
  "success": false,
  "errorMessage": "Description of the issue"
}
```

---

## Glossary

- **Seat Map:** Layout of available and unavailable seats for a flight segment.
- **Cabin:** Seating section (economy, business, etc.).
- **Segment:** A specific flight leg within your itinerary.

---

*For more details or help, contact API support or refer to the full API documentation.*

