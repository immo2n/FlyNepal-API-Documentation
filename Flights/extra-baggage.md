# Extra Baggage API Documentation

## Endpoint

`POST http://{{ip}}/api/offers/{{offer_id}}/extra-baggage`

## Request Body Example

```json
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
```

## Request Body Fields

| Field                | Type      | Description                                                                 |
|----------------------|-----------|-----------------------------------------------------------------------------|
| offerId              | string    | Unique identifier for the offer.                                            |
| price                | object    | Total price for the offer.                                                  |
| passengers           | array     | List of passengers and their included baggage.                              |
| extraBaggageOptions  | array     | List of extra baggage options to purchase.                                  |
| meal                 | string    | Meal information (if provided).                                             |
| fees                 | object    | Fees for date change, cancellation, and seat change.                        |
| slices               | array     | Flight segments with origin, destination, times, and airline info.          |

### Passengers Object

| Field           | Type    | Description                      |
|-----------------|---------|----------------------------------|
| id              | string  | Passenger ID.                    |
| type            | string  | Passenger type (e.g., adult).    |
| includedBaggage | object  | Included carry-on and checked.   |

### Extra Baggage Options Object

| Field       | Type    | Description                        |
|-------------|---------|------------------------------------|
| serviceId   | string  | Service ID for extra baggage.      |
| type        | string  | Type of baggage (e.g., checked).   |
| maxWeightKg | number  | Maximum weight in kilograms.       |
| price       | object  | Price for extra baggage.           |

### Fees Object

| Field         | Type    | Description                                   |
|---------------|---------|-----------------------------------------------|
| allowed       | boolean | Whether the action is allowed.                |
| amount        | string  | Fee amount (if applicable).                   |
| currency      | string  | Currency for the fee (if applicable).         |

### Slices Object

| Field         | Type    | Description                                   |
|---------------|---------|-----------------------------------------------|
| id            | string  | Slice ID.                                     |
| origin        | object  | Origin airport details.                       |
| destination   | object  | Destination airport details.                  |
| departingAt   | string  | Departure time (ISO 8601).                    |
| arrivingAt    | string  | Arrival time (ISO 8601).                      |
| duration      | string  | Duration (ISO 8601 format).                   |
| airline       | string  | Airline name.                                 |
| flightNumber  | string  | Flight number.                                |

## Response

The response will confirm the extra baggage purchase and provide updated offer details.

