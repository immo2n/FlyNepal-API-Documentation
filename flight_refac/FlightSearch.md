# API Documentation: International Flight Search

## Endpoint

**POST** `/flights/international/search`

Search for international flights between two IATA airports, specifying travel dates, passenger details, cabin class, and more.

---

## Request Example

```json
{
  "origin": "JFK",
  "destination": "LAX",
  "departure_date": "2025-10-01",
  "return_date": "2025-10-10",
  "cabin_class": "economy",
  "passengers": {
    "adult": 1,
    "child": 0,
    "infant": 0
  },
  "currency": "USD",
  "max_connections": 1
}
```

### Request Parameters

| Field            | Type                                | Required | Description                                                                                  |
|------------------|-------------------------------------|----------|----------------------------------------------------------------------------------------------|
| origin           | string (IATA code)                  | Yes      | Departure airport code (e.g., "JFK")                                                         |
| destination      | string (IATA code)                  | Yes      | Arrival airport code (e.g., "LAX")                                                           |
| departure_date   | string (YYYY-MM-DD)                 | Yes      | Date of departure                                                                            |
| return_date      | string (YYYY-MM-DD)                 | No       | Date of return (for round-trip)                                                              |
| cabin_class      | string (economy\|business\|first\|premium_economy) | No       | Cabin class. Defaults to "economy"                                                           |
| passengers       | object                              | Yes      | Number of passengers (adult, child, infant)                                                  |
| currency         | string                              | No       | Currency code (e.g., "USD"). Defaults to provider currency                                   |
| max_connections  | integer                             | No       | Max number of stops or layovers allowed                                                      |

#### Passengers Object

| Field    | Type    | Required | Description                   |
|----------|---------|----------|-------------------------------|
| adult    | integer | Yes      | Number of adult passengers    |
| child    | integer | Yes      | Number of child passengers    |
| infant   | integer | Yes      | Number of infant passengers   |

---

## Response Example

```json
{
  "success": true,
  "offers": [
    {
      "provider": "duffel",
      "offer_id": "abc123",
      "total_price": {
        "amount": "150.50",
        "currency": "USD"
      },
      "slices": [
        {
          "slice_id": "slice1",
          "segments": [
            {
              "flight_number": "DL123",
              "airline": "Delta Air Lines",
              "origin": { "code": "JFK", "name": "John F Kennedy Intl", "city": "New York" },
              "destination": { "code": "LAX", "name": "Los Angeles Intl", "city": "Los Angeles" },
              "departure_time": "2025-10-01T08:00:00",
              "arrival_time": "2025-10-01T11:00:00",
              "duration": "PT6H0M",
              "stops": 0
            }
          ]
        }
      ],
      "included_baggage": {
        "carry_on": 1,
        "checked": 1
      }
    }
  ]
}
```

### Response Parameters

| Field             | Type     | Description                                             |
|-------------------|----------|---------------------------------------------------------|
| success           | boolean  | Indicates if the search was processed successfully      |
| offers            | array    | List of flight offers                                   |

#### Offer Object

| Field               | Type     | Description                                                             |
|---------------------|----------|-------------------------------------------------------------------------|
| provider            | string   | Provider name (e.g., "duffel", "mondee", "openfair")                    |
| offer_id            | string   | Unique offer or quote ID from provider                                  |
| total_price         | object   | Total price for the offer (amount, currency)                            |
| slices              | array    | List of flight slices (each slice: one direction or leg)                |
| included_baggage    | object   | Included baggage: carry_on, checked                                     |

##### Slices Object

| Field     | Type   | Description                                  |
|-----------|--------|----------------------------------------------|
| slice_id  | string | Provider’s slice ID (if available)           |
| segments  | array  | List of flight segments (nonstop or with stops) |

###### Segment Object

| Field           | Type    | Description                           |
|-----------------|---------|---------------------------------------|
| flight_number   | string  | Flight number (e.g., "DL123")         |
| airline         | string  | Airline name                          |
| origin          | object  | Origin airport (code, name, city)     |
| destination     | object  | Destination airport (code, name, city)|
| departure_time  | string  | Departure timestamp (YYYY-MM-DDThh:mm:ss) |
| arrival_time    | string  | Arrival timestamp (YYYY-MM-DDThh:mm:ss)   |
| duration        | string  | ISO8601 duration (e.g., "PT6H0M")     |
| stops           | integer | Number of stops                       |

##### Included Baggage Object

| Field     | Type    | Description                   |
|-----------|---------|-------------------------------|
| carry_on  | integer | Number of carry-on bags allowed|
| checked   | integer | Number of checked bags allowed |

---

## Error Response

```json
{
  "success": false,
  "error": "Invalid origin IATA code"
}
```

---

## Notes

- All date/time fields use UTC unless specified otherwise.
- Ensure IATA codes are valid and supported by providers.
- Maximum connections parameter allows filtering for direct or connecting flights.
- Baggage included may vary by provider and offer.
