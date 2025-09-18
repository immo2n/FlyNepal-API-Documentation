### Endpoint
```
POST: /v3/flight/domestic/search
```

### Payload
```json
{
    "origin": "KTM",
    "destination": "BDP",
    "departureDate": "30-09-2025",
    "adultCount": "1",
    "childCount": "0"
}
```

### Response of the search api
```json
{
    "success": true,
    "data": {
        "inbound_flights": [],
        "outbound_flights": [
            {
                "airline": "YT",
                "airlineLogo": "http://usbooking.org/us/apiImages/YT.jpg",
                "flightDate": "30-SEP-2025",
                "flightNumber": "YT927",
                "departure": "KATHMANDU",
                "departureCode": "KTM",
                "departureTime": "08:30",
                "arrival": "BHADRAPUR",
                "arrivalCode": "BDP",
                "arrivalTime": "09:15",
                "aircraftType": "ATR72",
                "flightId": "05d9cf42-46de-4df4-a2a0-87a964bf105a",
                "flightClassCode": "F",
                "adultFare": "8400.0",
                "childFare": "4145.0",
                "infantFare": "0.0",
                "fuelSurcharge": "0.0",
                "tax": "0.0",
                "refundable": "F",
                "freeBaggage": "20",
                "callingStation": "BUDB2C"
            },
            ....
            ....
            ....
        ]
    }
}
```