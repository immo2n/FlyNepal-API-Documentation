### Endpoint
```
GET: /flights/international/offers/get/OFFER_ID
```
- example: /flights/international/offers/get/off_0000AxrBp1CsnVMEBNvC4I

### IMPORTANT
Please make sure to call the offer often, specially when doing final checkout as the prices for any offer can chnage at any given time! Getting null means the offer is no longer available!

### Example response
```json
{
    "offer_id": "off_0000AxrBp1CsnVMEBNvC4I",
    "carrier_name": "Duffel Airways",
    "carrier_logo": "https://assets.duffel.com/img/airlines/for-light-background/full-color-logo/ZZ.svg",
    "carrier_flight_number": "1639",
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
    "tax_amount": "30.38",
    "total_currency": "USD",
    "created_at": "2025-09-04T08:28:55.376916",
    "total_amount": "199.17",
    "passengers": [
        {
            "id": "pas_0000AxrBp10TXdQtYu7HjG",
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
}
```