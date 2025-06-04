### Endpoint
```
POST: /flights/book
```

### Payload
- token is a way to verify the request is coming from the app not something else. You will get one from the backend server.
- YOU WILL HAVE TO ASK/USE SAVED USER INFO AFTER OFFER IS SELECTED. MAKE 100% SURE THAT THE AGE YOU SENT FOR GETTING OFFERS - MATCH THE DATE OF BIRTH.
```
{
  "token": "TEST_TOKEN",
  "selected_offers": [
    "off_0000AunJGJ0Hd2KccMiX7c"
  ],
  "payments": [
    {
      "type": "balance",
      "currency": "USD",
      "amount": "2413.22"
    }
  ],
  "passengers": [
    {
      "phone_number": "+442080160508",
      "email": "tony@example.com",
      "born_on": "2005-06-04",
      "title": "mr",
      "gender": "m",
      "family_name": "Stark",
      "given_name": "Tony",
      "id": "pas_0000AunJG4v9zHumwQDFBa"
    }
  ]
}
```
### Payload
When booked the flight
```
{
  "booking_reference": "E2F8Y5",
  "passenger": {
    "name": "TONY STARK",
    "date_of_birth": "2005-06-04",
    "email": "tony@example.com",
    "phone": "+442080160508",
    "ticket_number": "6182461287909"
  },
  "flights": [
    {
      "from": "Kathmandu (KTM)",
      "to": "Singapore (SIN)",
      "airline": "Singapore Airlines",
      "flight_number": "SQ 441",
      "departure": "2025-06-05T23:00:00",
      "arrival": "2025-06-06T06:20:00",
      "cabin_class": "BUSINESS"
    },
    {
      "from": "Singapore (SIN)",
      "to": "Newark (EWR)",
      "airline": "Singapore Airlines",
      "flight_number": "SQ 022",
      "departure": "2025-06-07T23:35:00",
      "arrival": "2025-06-08T06:00:00",
      "cabin_class": "BUSINESS"
    }
  ],
  "payment": {
    "total_paid": "2413.22",
    "currency": "USD",
    "base_fare": "2235.56",
    "taxes": "177.66",
    "status": "Paid"
  }
}
```
