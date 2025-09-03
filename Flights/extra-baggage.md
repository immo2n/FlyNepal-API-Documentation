{
    "API": "http://{{ip}}/api/offers/{{offer_id}}/extra-baggage",
    "Description": "Retrieve extra baggage options and related details for a specific flight offer.",
    "Method": "GET",
    "Path Parameters": {
        "ip": "The server IP address or domain.",
        "offer_id": "Unique identifier for the flight offer."
    },
    "Response": {
        "offerId": "Unique identifier for the flight offer.",
        "price": {
            "amount": "Total price of the offer.",
            "currency": "Currency code (e.g., USD)."
        },
        "passengers": [
            {
                "id": "Unique identifier for the passenger.",
                "type": "Passenger type (e.g., adult, child).",
                "includedBaggage": {
                    "carryOn": "Number of carry-on bags included.",
                    "checked": "Number of checked bags included."
                }
            }
        ],
        "extraBaggageOptions": [
            {
                "serviceId": "Unique identifier for the extra baggage service.",
                "type": "Type of baggage (e.g., checked).",
                "maxWeightKg": "Maximum weight allowed for extra baggage (kg).",
                "price": {
                    "amount": "Price for the extra baggage option.",
                    "currency": "Currency code."
                }
            }
        ],
        "meal": "Meal information (if provided).",
        "fees": {
            "dateChange": {
                "allowed": "Whether date change is allowed.",
                "amount": "Fee amount for date change (if applicable).",
                "currency": "Currency code."
            },
            "cancellation": {
                "allowed": "Whether cancellation is allowed.",
                "amount": "Fee amount for cancellation (if applicable).",
                "currency": "Currency code."
            },
            "seatChange": {
                "allowed": "Whether seat change is allowed.",
                "amount": "Fee amount for seat change (if applicable).",
                "currency": "Currency code."
            }
        },
        "slices": [
            {
                "id": "Unique identifier for the flight slice.",
                "origin": {
                    "code": "IATA code for origin airport.",
                    "name": "Name of origin airport.",
                    "city": "City of origin."
                },
                "destination": {
                    "code": "IATA code for destination airport.",
                    "name": "Name of destination airport.",
                    "city": "City of destination."
                },
                "departingAt": "Departure date and time (ISO 8601 format).",
                "arrivingAt": "Arrival date and time (ISO 8601 format).",
                "duration": "Flight duration (ISO 8601 duration format).",
                "airline": "Operating airline name.",
                "flightNumber": "Flight number."
            }
        ]
    },
    "Example": "See response structure above for sample data."
}
API:http://{{ip}}/api/offers/{{offer_id}}/extra-baggage
{
    "offerId": "off_0000AxpnQlzKwDMSgB2H9n",
    "price": {
        "amount": "137.72",
        "currency": "USD"
    },
    "passengers": [
        {
            "id": "pas_0000AxpnQljjsCsttnjoqO",
            "type": "adult",
            "includedBaggage": {
                "carryOn": 1,
                "checked": 1
            }
        }
    ],
    "extraBaggageOptions": [
        {
            "serviceId": "ase_0000AxppzPTTLclVOgaVmb",
            "type": "checked",
            "maxWeightKg": 23,
            "price": {
                "amount": "26.89",
                "currency": "USD"
            }
        }
    ],
    "meal": "Not provided",
    "fees": {
        "dateChange": {
            "allowed": true,
            "amount": "20.00",
            "currency": "GBP"
        },
        "cancellation": {
            "allowed": false,
            "amount": null,
            "currency": null
        },
        "seatChange": {
            "allowed": false,
            "amount": null,
            "currency": null
        }
    },
    "slices": [
        {
            "id": "sli_0000AxpnQlzKwDMSgB2H9m",
            "origin": {
                "code": "DFW",
                "name": "Dallas/Fort Worth International Airport",
                "city": "Dallas"
            },
            "destination": {
                "code": "AUS",
                "name": "Austin-Bergstrom International Airport",
                "city": "Austin"
            },
            "departingAt": "2025-11-29T21:40:00",
            "arrivingAt": "2025-11-29T22:39:00",
            "duration": "PT59M",
            "airline": "British Airways",
            "flightNumber": "0109"
        }
    ]
}
