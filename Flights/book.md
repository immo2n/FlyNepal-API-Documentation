## Description
This API is used to **book an international flight** using a selected offer and passenger details.  
It requires the `offerId` from the flight search result and complete passenger information.

---

## Request Body (JSON)
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
    ]
       "addServices": [
         {
           "id": "ase_0000Ay0IAGwSiC1MIEHdHl",
           "quantity": 1
         }
       ]
}
