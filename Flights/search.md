### Endpoint
```
POST: /flights/international/search
```

### Payload
```json
{
  "origin": "DAC",
  "destination": "DXB",
  "departure_date": "2025-09-10",
  "cabin_class": "economy",
  "children_count": 0,
  "infant_count": 0,
  "adult_count": 1,
  "max_connections": 2
}
```

### Response of the search api
```json
{
    "offers": [
        {
            "offer_id": "off_0000AxrDM8aHmO7jnyphuP",
            "carrier_name": "Duffel Airways",
            "carrier_logo": "https://assets.duffel.com/img/airlines/for-light-background/full-color-logo/ZZ.svg",
            "carrier_flight_number": "4404",
            "origin": "Dhaka Shahjalal International Airport",
            "destination": "Dubai International Airport",
            "distance": "3537.1066324533567",
            "departure_date": "2025-09-10T06:58",
            "departure_time": "2025-09-10T06:58",
            "arrival_date": "2025-09-10T10:15",
            "arrival_time": "2025-09-10T10:15",
            "duration": "PT5H17M",
            "offer_expires_at": "2025-09-04T09:16:06.805527",
            "fare_brand_name": "Basic",
            "tax_amount": "31.06",
            "total_currency": "USD",
            "created_at": "2025-09-04T08:46:06.805526",
            "total_amount": "203.64",
            "passengers": [
                {
                    "id": "pas_0000AxrDM8MoaTLf8CWwu8",
                    "baggageList": [
                        {
                            "count": 1,
                            "type": "checked"
                        },
                        {
                            "count": 1,
                            "type": "carry-on"
                        }
                    ],
                    "fareCode": "Y20LGTN2"
                }
            ]
        },
        ....
        ....
        ....
    ]
}
```