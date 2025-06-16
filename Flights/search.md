### Endpoint
```
POST: /flights/search
```

### Payload
- token is a way to verify the request is coming from the app not something else. You will get one from the backend server.
- Single journey ticket
```
{
  "token": "TEST_TOKEN",
  "origin": "KTM",
  "destination": "NYC",
  "departure_date": "2025-06-05",
  "cabin_class": "business",
  "passengers": [
    {
        "type": "adult"
    }
  ],
  "max_connections": 0
}
```
With return ticket*
```
{
  "token": "TEST_TOKEN",
  "origin": "KTM",
  "destination": "NYC",
  "departure_date": "2025-06-05",
  "return_flight": true,
  "return_date":  "2025-07-05",
  "cabin_class": "business",
  "passengers": [
    {
        "type": "adult"
    }
  ],
  "max_connections": 0
}
```
#### 🔁 1. `return_flight` (optional, default: `false`)
- Type: `boolean`
- If set to `true`, the return trip is also included.
- The return trip reverses the route (`destination` becomes `origin` and vice versa).
- Requires `return_date`.

#### 📅 2. `return_date` (optional)
- Type: `string` (format: `YYYY-MM-DD`)
- Only needed when `return_flight` is `true`.

#### 👤 3. `passengers` (required)
- Type: `array` of passenger objects
- Each object must include:
  - `age` (required): number (1-150)

**⚠️ Important:**
- If only one passenger is provided and they are non adult, the request will fail (some airlines don't allow unaccompanied minors).
- To avoid this, always include at least **one adult** if any passengers are minors.

#### 💺 4. `cabin_class` (optional, default: `"economy"`)
- Type: `string`
- Valid values:
  - `"first"`
  - `"business"`
  - `"premium_economy"`
  - `"economy"`

#### 🔁 5. `max_connections` (optional, default: `0`)
- Type: `number` (`0`, `1`, or `2`)
- Limits how many layovers (flight changes) are allowed:
  - `0` = Direct flights only
  - `1` = One connection
  - `2` = Up to two connections

### Response of the search api for a flight from KTM to NYC
```
{
    "offers": [
        {
            "offer_id": "off_0000AuoE7qV13I5czJhs3u",
            "carrier_name": "Duffel Airways",
            "carrier_logo": "https://assets.duffel.com/img/airlines/for-light-background/full-color-logo/ZZ.svg",
            "carrier_flight_number": "3764",
            "origin": "Tribhuvan International Airport",
            "destination": "John F. Kennedy International Airport",

            "mid_journey_stopages": [],
            "distance": "12.12 km",

            "departure_date": "2025-06-04",
            "departure_time": "3:05 AM",
            "arrival_date": "2025-06-05",
            "arrival_time": "10:04 AM",
            "duration": "0d 16h 44m",

            "fare_brand_name": "Premium",
            "tax_amount": "611.92",
            "total_currency": "USD",
            "created_at": "2025-06-05T04:34:17.873780Z",
            "total_amount": "4011.53",

            "passengers": [
                {
                    "id": "pas_0000AuoE7pnle5UkpBTKeQ",
                    "type": "adult",
                    "age": 20
                }
            ]
        },

        .....
        .....
        .....

    ]
}
```
