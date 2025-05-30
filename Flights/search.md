### Endpoint
```
POST: /flights/search
```

### Payload
Single journey ticket
```
{
  "origin": "KTM",
  "destination": "NYC",
  "departure_date": "2025-06-05",
  "cabin_class": "business",
  "passengers": [
    {
        "age": 20
    }
  ],
  "max_connections": 0
}
```
With return ticket*
```
{
  "origin": "KTM",
  "destination": "NYC",
  "departure_date": "2025-06-05",
  "return_flight": true,
  "return_date":  "2025-07-05",
  "cabin_class": "business",
  "passengers": [
    {
        "age": 20
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
- If only one passenger is provided and they are under 18, the request will fail (some airlines don't allow unaccompanied minors).
- To avoid this, always include at least **one adult** (age ≥ 18) if any passengers are minors.

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
            "offer_id": "off_0000Aud3PBM9b57vgi4nLc",

            "carrier_name": "Duffel Airways",
            "carrier_logo": "https://assets.duffel.com/img/airlines/for-light-background/full-color-logo/ZZ.svg",
            "carrier_flight_number": "9924",

            "origin": "Tribhuvan International Airport",
            "destination": "Tribhuvan International Airport",
            "journey_distance": 24222.345841500923,
            "mid_journey_stopages": [],

            "tax_amount": "1243.20",
            "total_currency": "USD",
            "created_at": "2025-05-30T19:12:21.082904Z",
            "total_amount": "8149.83",

            "passengers": [
                {
                    "id": "pas_0000Aud3PB8KQU4Gzpbkn5",
                    "type": "adult",
                    "age": 20
                }
            ]
        },
        .......
        .......
    ]
}
```
