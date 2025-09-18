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
            "offer_id": "off_0000AyKdCUR0XjwoaUeLw2",
            "carrier_name": "Duffel Airways",
            "carrier_logo": "https://assets.duffel.com/img/airlines/for-light-background/full-color-logo/ZZ.svg",
            "carrier_flight_number": "6241",
            "origin": "Dhaka Shahjalal International Airport",
            "destination": "Dubai International Airport",
            "distance": "3537.1066324533567",
            "departure_date": "Sep 28, 2025",
            "departure_time": "08:54 PM",
            "arrival_date": "Sep 29, 2025",
            "arrival_time": "12:11 AM",
            "duration": "PT5H17M",
            "offer_expires_at": "Sep 18, 2025 01:52 PM",
            "fare_brand_name": "Basic",
            "tax_amount": "32.67",
            "total_currency": "USD",
            "created_at": "2025-09-18T13:22:19.704391",
            "total_amount": "214.20",
            "passengers": [
                {
                    "id": "pas_0000AyKdCUDBN8t9tcBJNz",
                    "type": "adult",
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