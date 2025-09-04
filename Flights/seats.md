## International Flight Seat Map API

### Endpoint
`POST http://{{ip}}/flights/international/seats`

### Description
Retrieves the seat map for an international flight offer. The seat map includes cabin layout, seat availability, and associated services.

### Request Payload
```json
{
  "offerId": "off_0000Axl1BYEqggVUhoocd4"
}
```
- `offerId` (string): Unique identifier for the flight offer.

### Response
```json
{
  "success": true,
  "orderId": "off_0000Axl1BYEqggVUhoocd4",
  "errorMessage": null,
  "seatMap": [ ... ],
  "seatMapMetadata": { "seatMapCount": 1 },
  "totalCabins": 1,
  "cabinClasses": []
}
```

- `success` (bool): Indicates if the seat map retrieval was successful.
- `orderId` (string): The offer ID associated with the seat map.
- `errorMessage` (string|null): Error message if the request failed.
- `seatMap` (array): List of seat map objects.
  - `id` (string): Unique seat map identifier.
  - `cabins` (array): List of cabin objects.
    - `aisles` (float): Number of aisles in the cabin.
    - `deck` (float): Deck number.
    - `rows` (array): List of row objects.
      - `sections` (array): List of section objects.
        - `elements` (array): List of elements in the section.
          - `type` (string): Element type (`seat`, `empty`, `bassinet`).
          - `designator` (string, optional): Seat designator (e.g., "28A").
          - `availableServices` (array, optional): List of available services for the seat.
            - `id` (string): Service ID.
            - `passengerId` (string): Passenger ID.
            - `totalAmount` (float): Service price.
            - `totalCurrency` (string): Currency code.
          - `disclosures` (array, optional): List of seat-specific disclosures.
    - `wings` (object): Wing information.
      - `firstRowIndex` (float): Index of the first row.
      - `lastRowIndex` (float): Index of the last row.
- `seatMapMetadata` (object): Metadata about the seat map.
  - `seatMapCount` (int): Number of seat maps returned.
- `totalCabins` (int): Total number of cabins in the seat map.
- `cabinClasses` (array): List of cabin classes (if any).

### Example
See the response example above for a detailed seat map structure.

### Notes
- Some seats may have associated services (e.g., extra legroom, bassinet).
- Disclosures may indicate restrictions (e.g., "Passenger must be an adult").
- The seat map structure supports multiple cabins and decks.

---
