# Create Hold Booking API

## Endpoint
```
POST /v2/flights/international/book
```

## Description
This endpoint allows you to **hold** a flight booking with passenger details and optional add-on services.

---

## Request Body

```json
{
    "provider": "duffel",
    "orderType": "instant",
    "offerId": "{{offerId}}",
    "passengers": [
        {
            "passengerId": "{{passenger_id_1}}",
            "infantPassengerId": "{{passenger_id_4}}",
            "passengerName": "Peter Parker",
            "passengerGender": "m",
            "passengerTitle": "Mr",
            "passengerEmail": "peter@avengers.com",
            "passengerDateOfBirth": "2003-08-10",
            "passengerPhoneNumber": "+8801317215404"
        },
        {
            "passengerId": "{{passenger_id_2}}",
            "passengerName": "Peter Faisal",
            "passengerGender": "m",
            "passengerTitle": "Mr",
            "passengerEmail": "faisal@avengers.com",
            "passengerDateOfBirth": "2018-08-10",
            "passengerPhoneNumber": "+8801317225404"
        },
        {
            "passengerId": "{{passenger_id_3}}",
            "passengerName": "Peter Samia",
            "passengerGender": "f",
            "passengerTitle": "Mrs",
            "passengerEmail": "samia@avengers.com",
            "passengerDateOfBirth": "2017-09-10",
            "passengerPhoneNumber": "+8801327215404"
        },
        {
            "passengerId": "{{passenger_id_4}}",
            "passengerName": "Peter Fahim",
            "passengerGender": "m",
            "passengerTitle": "Mr",
            "passengerEmail": "fahim@avengers.com",
            "passengerDateOfBirth": "2024-08-10",
            "passengerPhoneNumber": "+8801317215504"
        }
    ]
    // "addServices": [
    //     {
    //         "id": "ase_0000AytTE77fq7LIWhaarC",
    //         "quantity": 1,
    //         "unitPrice": 27.14
    //     },
    //     {
    //         "id": "ase_0000AytTE77fq7LIWhaarD",
    //         "quantity": 1,
    //         "unitPrice": 27.14
    //     },
    //     {
    //         "id": "ase_0000AytTE77fq7LIWhaarE",
    //         "quantity": 1,
    //         "unitPrice": 27.14
    //     }
    // ]
}
```

---

### Request Parameters

| Field                   | Type     | Required | Description |
|--------------------------|----------|----------|-------------|
| `orderType`             | string   | Yes      | Defines the booking type. For hold booking, use `"hold"`, to instant pay use `"instant"`. |
| `offerId`               | string   | Yes      | Unique identifier of the flight offer. |
| `passengers`            | array    | Yes      | List of passengers for the booking. |
| `infantPassengerId`           | string   | Yes (If infant without seat)     | Infant's passengerId |
| `passengerId`           | string   | Yes      | Unique passenger identifier. |
| `passengerName`         | string   | Yes      | Full name of the passenger. |
| `passengerGender`       | string   | Yes      | Gender of the passenger (`"m"` for male, `"f"` for female). |
| `passengerTitle`        | string   | Yes      | Title (`Mr`, `Mrs`, `Ms`, etc.). |
| `passengerEmail`        | string   | Yes      | Email address of the passenger. |
| `passengerDateOfBirth`  | string   | Yes      | Date of birth in `YYYY-MM-DD` format. |
| `passengerType`         | string   | No      | Type of passenger (`adult`, `child`, `infant`). |
| `passengerPhoneNumber`  | string   | Yes      | Passenger’s contact number. |
| `addServices`           | array    | No       | Additional services to include (e.g., baggage, meals, seat selection). |
| `id`                    | string   | Yes (if services included) | Service identifier. |
| `quantity`              | integer  | Yes (if services included) | Quantity of the service. |
| `unitPrice`              | double  | Yes (if services included) | unitPrice of the service. |

---

## Sample Response

```json
{
  "bookingReference": "GIGMOZ",
  "orderId": "ord_0000Ay6FtkPYGralO8m5g0",
  "success": true,
  "message": "Booked Successfully",
  "errorMessage": null
}
```

---

### Response Parameters

| Field              | Type     | Description |
|---------------------|----------|-------------|
| `bookingReference` | string   | Unique booking reference code (PNR). |
| `orderId`          | string   | Unique order identifier. |
| `success`          | boolean  | Indicates whether the booking was successful. |
| `message`          | string   | Success message. |
| `errorMessage`     | string   | Error message if booking fails, otherwise `null`. |

---

✅ **Use this API to hold a flight booking before making a payment.**
