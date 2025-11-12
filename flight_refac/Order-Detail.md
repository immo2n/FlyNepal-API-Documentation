# International Flight Offer Detail API (v2)

## Endpoint

**GET** `/v2/flight/order/detail?orderId={{orderId}}&pnr={{pnr}}&provider=mondee`

[N.B. Here `pnr` parameter is optional for duffel but mandatory for mondee]

---

## Overview

Retrieve the full details for a specific flight offer, including price, conditions (refund, change policies), passengers, flight segments, and baggage.

---

## How to Use

1. **Obtain an Offer ID**  
   - First, use the `/v2/flight/bookings` endpoint to create a booking.
   - Select the order and copy its `orderId` and `pnr`.

2. **Request Details**
   - Make a **GET** request to `/v2/flight/order/detail` with the provider and offerId as query parameters.

### Example Request

```
GET /v2/flight/order/detail?orderId=ord_0000AyzVBdRlvQBWj8u2xE&pnr=12AB4A&provider=duffel
```

---

## Response

Returns detailed information about the selected offer.

### Example Response

```json
{
  "status": true,
  "code": 200,
  "message": "PNR retrieval successful",
  "bookingDetail": {
    "pnrCode": "CPYBDV",
    "provider": "mondee",
    "orderId": "20001150630107",
    "bookingStatus": "Cancelled",
    "isRefundable": false,
    "ticketingTimeLimit": "2025-11-10T00:00:00",
    "companyContacts": {
      "phone": "+8809614500500",
      "email": "support@flightdesk.com"
    },
    "customerContacts": {
      "emails": [
        "john.doe@gmail.com"
      ],
      "phones": [
        "+8801851070451"
      ]
    },
    "prices": {
      "totalAmount": "1300",
      "currency": "EUR",
      "adult": {
        "count": 2,
        "totalFareSinglePax": "400",
        "baseFareSinglePax": "300",
        "taxFareSinglePax": "100",
        "TotalFareAllPax": "800",
        "currency": "EUR"
      },
      "child": {
        "count": 1,
        "totalFareSinglePax": "300",
        "baseFareSinglePax": "250",
        "taxFareSinglePax": "50",
        "TotalFareAllPax": "300",
        "currency": "EUR"
      },
      "infant": {
        "count": 1,
        "totalFareSinglePax": "200",
        "baseFareSinglePax": "170",
        "taxFareSinglePax": "30",
        "TotalFareAllPax": "200",
        "currency": "EUR"
      }
    },
    "passengers": [
      {
        "givenName": "MD MIJANUR",
        "surname": "RAHMAN",
        "type": "adult",
        "dateOfBirth": "",
        "id": "1.1",
        "parentsId": null,
        "doc": {
          "hasDoc": true,
          "docInfo": [
            {
              "type": "P",
              "country": "BGD",
              "number": "A03086003",
              "nationality": "BGD",
              "dateOfBirth": "1995-02-01",
              "gender": "M",
              "expireDate": "2032-02-06",
              "surname": "RAHMAN",
              "givenName": "MD MIJANUR"
            }
          ]
        },
        "ticket": {
          "ticketNumber": "",
          "ticketVoided": false,
          "ticketingDate": "",
          "hasTicket": false
        }
      },
      {
        "givenName": "MD Hasib",
        "surname": "RAHMAN",
        "type": "child",
        "dateOfBirth": "",
        "id": "2.1",
        "parentsId": null,
        "doc": {
          "hasDoc": true,
          "docInfo": [
            {
              "type": "P",
              "country": "BGD",
              "number": "A03086003",
              "nationality": "BGD",
              "dateOfBirth": "1995-02-01",
              "gender": "M",
              "expireDate": "2032-02-06",
              "surname": "RAHMAN",
              "givenName": "MD MIJANUR"
            }
          ]
        },
        "ticket": {
          "ticketNumber": "",
          "ticketVoided": false,
          "ticketingDate": "",
          "hasTicket": false
        }
      }
    ],
    "slices": [
      {
        "direction": "outbound",
        "segments": [
          {
            "id": 1,
            "departureAirport": {
              "code": "DAC",
              "name": "Dhaka Shahjalal International Airport",
              "city": "Dhaka",
              "country": "Bangladesh",
              "terminal": "2"
            },
            "arrivalAirport": {
              "code": "CMB",
              "name": "Colombo Bandaranaike Airport",
              "city": "Colombo",
              "country": "Sri Lanka",
              "terminal": "1"
            },
            "departureDateTime": "2025-11-20T13:00:00",
            "arrivalDateTime": "2025-11-20T15:55:00",
            "duration": "3H 25M",
            "flightNumber": "UL190",
            "marketingCarrier": {
              "code": "UL",
              "name": "SriLankan Airlines",
              "logoUrl": "https://assets.duffel.com/img/airlines/UL.svg"
            },
            "operatingCarrier": {
              "code": "UL",
              "name": "SriLankan Airlines",
              "logoUrl": "https://assets.duffel.com/img/airlines/UL.svg"
            },
            "bookingClass": "L",
            "cabinClass": "Economy",
            "segmentStatus": "Confirmed",
            "baggageInfo": [
              {
                "type": "checked",
                "baggage": "30KG"
              },
              {
                "type": "carryOn",
                "baggage": "1PC"
              }
            ]
          },
          {
            "id": 2,
            "departureAirport": {
              "code": "CMB",
              "name": "Colombo Bandaranaike Airport",
              "city": "Colombo",
              "country": "Sri Lanka",
              "terminal": "2"
            },
            "arrivalAirport": {
              "code": "DXB",
              "name": "Dubai International Airport",
              "city": "Dubai",
              "country": "UAE",
              "terminal": "1"
            },
            "departureDateTime": "2025-11-21T13:45:00",
            "arrivalDateTime": "2025-11-21T16:55:00",
            "duration": "4H 40M",
            "flightNumber": "UL231",
            "marketingCarrier": {
              "code": "UL",
              "name": "SriLankan Airlines",
              "logoUrl": "https://assets.duffel.com/img/airlines/UL.svg"
            },
            "operatingCarrier": {
              "code": "UL",
              "name": "SriLankan Airlines",
              "logoUrl": "https://assets.duffel.com/img/airlines/UL.svg"
            },
            "bookingClass": "L",
            "cabinClass": "Economy",
            "segmentStatus": "Hold",
            "baggageInfo": [
              {
                "type": "checked",
                "baggage": "30KG"
              },
              {
                "type": "carryOn",
                "baggage": "1PC"
              }
            ]
          }
        ]
      },
      {
        "direction": "return",
        "segments": [
          {
            "id": 3,
            "departureAirport": {
              "code": "DXB",
              "name": "Dubai International Airport",
              "city": "Dubai",
              "country": "UAE",
              "terminal": "2"
            },
            "arrivalAirport": {
              "code": "DAC",
              "name": "Dhaka Shahjalal International Airport",
              "city": "Dhaka",
              "country": "Bangladesh",
              "terminal": "1"
            },
            "departureDateTime": "2025-12-21T07:50:00",
            "arrivalDateTime": "2025-12-21T11:30:00",
            "duration": "4H 20M",
            "flightNumber": "UL189",
            "marketingCarrier": {
              "code": "UL",
              "name": "SriLankan Airlines",
              "logoUrl": "https://assets.duffel.com/img/airlines/UL.svg"
            },
            "operatingCarrier": {
              "code": "UL",
              "name": "SriLankan Airlines",
              "logoUrl": "https://assets.duffel.com/img/airlines/UL.svg"
            },
            "equipment": "Airbus A320",
            "bookingClass": "S",
            "cabinClass": "Economy",
            "segmentStatus": "Hold",
            "baggageInfo": [
              {
                "type": "checked",
                "baggage": "30KG"
              },
              {
                "type": "carryOn",
                "baggage": "1PC"
              }
            ]
          }
        ]
      }
    ],
    "username": "hojama"
  }
}
```


