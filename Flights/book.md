# Create Hold Booking API

## Endpoint
```
POST /flights/international/book
```

## Description
This endpoint allows you to **hold** a flight booking with passenger details and optional add-on services.

---

## Request Body

```json
{
  "orderType": "hold",
  "offerId": "{{offerId}}",
  "passengers": [
    {
      "passengerId": "{{passengerId}}",
      "passengerName": "Peter Parker",
      "passengerGender": "m",
      "passengerTitle": "Mr",
      "passengerEmail": "peter@avengers.com",
      "passengerDateOfBirth": "2003-08-10",
      "passengerType": "child",
      "passengerPhoneNumber": "+8801317215404"
    }
  ],
  "addServices": [
    {
      "id": "{{serviceId}}",
      "quantity": 1,
      "unitPrice": 27.12
    }
  ]
}
```

---

### Request Parameters

| Field                   | Type     | Required | Description |
|--------------------------|----------|----------|-------------|
| `orderType`             | string   | Yes      | Defines the booking type. For hold booking, use `"hold"`, to instant pay use `"instant"`. |
| `offerId`               | string   | Yes      | Unique identifier of the flight offer. |
| `passengers`            | array    | Yes      | List of passengers for the booking. |
| `passengerId`           | string   | Yes      | Unique passenger identifier. |
| `passengerName`         | string   | Yes      | Full name of the passenger. |
| `passengerGender`       | string   | Yes      | Gender of the passenger (`"m"` for male, `"f"` for female). |
| `passengerTitle`        | string   | Yes      | Title (`Mr`, `Mrs`, `Ms`, etc.). |
| `passengerEmail`        | string   | Yes      | Email address of the passenger. |
| `passengerDateOfBirth`  | string   | Yes      | Date of birth in `YYYY-MM-DD` format. |
| `passengerType`         | string   | Yes      | Type of passenger (`adult`, `child`, `infant`). |
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
