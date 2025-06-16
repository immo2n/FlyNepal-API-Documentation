### Endpoint
```
POST: /flights/international/book
```

### Payload
- Endpoint for booking the flights
```
{
  "offerId": "off_0000Av8tQCcVvdH0rcatCV",
  "passengerId": "pas_0000Av8tQCNcozMc7Rczzc",
  "passengerName": "Tony Stark",
  "passengerGender": "m",
  "passengerTitle": "Mr",
  "passengerEmail": "tony@avengers.com",
  "passengerDateOfBirth": "2000-06-20",
  "passengerType": "adult",
  "passengerPhoneNumber": "+8801317215403"
}
```

### Response
When booked the flight
```
{
  "bookingReference": "RFE4MR",
  "success": true,
  "message": "Booked Successfully",
  "errorMessage": null
}
```
- This reference Id is everything! so --- show this to the user wisely. And for now save this on the app itself - database is not yet connected. I REPEAT, SAVE THE REFERENCE ID ON THE APP ITESELF.

When failed, say you booked an already booked one
```
{
  "bookingReference": null,
  "success": false,
  "message": "Booking Failed",
  "errorMessage": "DuffelException(errors=[ValidationError(super=Error(code=offer_request_already_booked, documentationUrl=https://duffel.com/docs/api/overview/response-handling, message=Field 'selected_offers' has offers included in a offer request that has already been booked; please perform a new search, title=Can't book multiple offers from the same offer request, errorType=validation_error), source=ValidationError.ValidationErrorSource(field=selected_offers, pointer=/selected_offers))], meta=Meta(requestId=GEkcQ-wofl24VUgE1ddE, status=422))"
}
```