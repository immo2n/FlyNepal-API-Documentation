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
    "success": true,
    "offer": {
        "id": "off_0000Ay8kSCchoOcO08KH7i",
        "price": {
            "amount": "464.95",
            "currency": "USD",
            "display": "USD 464.95"
        },
        "airline": {
            "name": "Duffel Airways",
            "flightNumber": "7203",
            "logo": "https://assets.duffel.com/img/airlines/for-light-background/full-color-logo/ZZ.svg"
        },
        "conditions": {
            "fees": {
                "cancellation": {
                    "allowed": false,
                    "amount": null,
                    "currency": null,
                    "display": null
                },
                "dateChange": {
                    "allowed": false,
                    "amount": null,
                    "currency": null,
                    "display": null
                },
                "seatChange": {
                    "allowed": false,
                    "amount": null,
                    "currency": null,
                    "display": null
                }
            },
            "meal": null,
            "baggagePolicy": null
        },
        "passengers": [
            {
                "id": "pas_0000Ay8kSCJuwFab3rXGq2",
                "type": "adult",
                "baggage": {
                    "carryOn": 1,
                    "checked": 1
                }
            },
            {
                "id": "pas_0000Ay8kSCJuwFab3rXGq3",
                "type": "adult",
                "baggage": {
                    "carryOn": 1,
                    "checked": 1
                }
            },
            {
                "id": "pas_0000Ay8kSCJuwFab3rXGq4",
                "type": "child",
                "baggage": {
                    "carryOn": 1,
                    "checked": 1
                }
            },
            {
                "id": "pas_0000Ay8kSCJuwFab3rXGq5",
                "type": "infant_without_seat",
                "baggage": {
                    "carryOn": 1,
                    "checked": 1
                }
            }
        ],
        "journey": {
            "duration": "PT3H44M",
            "slices": [
                {
                    "id": "sli_0000Ay8kSCchoOcO08KH7h",
                    "origin": {
                        "code": "DAC",
                        "name": "Dhaka Shahjalal International Airport",
                        "city": null
                    },
                    "destination": {
                        "code": "KBL",
                        "name": "Hamid Karzai International Airport",
                        "city": null
                    },
                    "departure": {
                        "dateTime": "2025-11-29T21:40",
                        "date": "2025-11-29",
                        "time": "21:40"
                    },
                    "arrival": {
                        "dateTime": "2025-11-29T23:54",
                        "date": "2025-11-29",
                        "time": "23:54"
                    }
                }
            ],
            "stopovers": []
        },
        "metadata": {
            "createdAt": "2025-09-12T19:47:04.051855",
            "expiresAt": "2025-09-12T20:17:04.051865",
            "source": "Duffel API"
        }
    }
}
```
