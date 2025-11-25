class HotelSample {
  final String id;
  final String checkInDate;
  final String checkOutDate;
  final int rooms;
  final String cheapestRateTotalAmount;
  final String cheapestRatePublicCurrency;
  final String cheapestRatePublicAmount;
  final String cheapestRateDueAtAccommodationCurrency;
  final String cheapestRateDueAtAccommodationAmount;
  final String cheapestRateCurrency;
  final String cheapestRateBaseCurrency;
  final String cheapestRateBaseAmount;
  final List<dynamic> supportedNegotiatedRates;
  final List<Guest> guests;
  final Accommodation accommodation;

  HotelSample({
    required this.id,
    required this.checkInDate,
    required this.checkOutDate,
    required this.rooms,
    required this.cheapestRateTotalAmount,
    required this.cheapestRatePublicCurrency,
    required this.cheapestRatePublicAmount,
    required this.cheapestRateDueAtAccommodationCurrency,
    required this.cheapestRateDueAtAccommodationAmount,
    required this.cheapestRateCurrency,
    required this.cheapestRateBaseCurrency,
    required this.cheapestRateBaseAmount,
    required this.supportedNegotiatedRates,
    required this.guests,
    required this.accommodation,
  });

  factory HotelSample.fromJson(Map<String, dynamic> json) {
    return HotelSample(
      id: json['id'] as String,
      checkInDate: json['check_in_date'] as String,
      checkOutDate: json['check_out_date'] as String,
      rooms: json['rooms'] as int,
      cheapestRateTotalAmount: json['cheapest_rate_total_amount'] as String,
      cheapestRatePublicCurrency: json['cheapest_rate_public_currency'] as String,
      cheapestRatePublicAmount: json['cheapest_rate_public_amount'] as String,
      cheapestRateDueAtAccommodationCurrency:
          json['cheapest_rate_due_at_accommodation_currency'] as String,
      cheapestRateDueAtAccommodationAmount:
          json['cheapest_rate_due_at_accommodation_amount'] as String,
      cheapestRateCurrency: json['cheapest_rate_currency'] as String,
      cheapestRateBaseCurrency: json['cheapest_rate_base_currency'] as String,
      cheapestRateBaseAmount: json['cheapest_rate_base_amount'] as String,
      supportedNegotiatedRates:
          json['supported_negotiated_rates'] as List<dynamic>,
      guests: (json['guests'] as List)
          .map((guest) => Guest.fromJson(guest as Map<String, dynamic>))
          .toList(),
      accommodation: Accommodation.fromJson(
          json['accommodation'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'check_in_date': checkInDate,
      'check_out_date': checkOutDate,
      'rooms': rooms,
      'cheapest_rate_total_amount': cheapestRateTotalAmount,
      'cheapest_rate_public_currency': cheapestRatePublicCurrency,
      'cheapest_rate_public_amount': cheapestRatePublicAmount,
      'cheapest_rate_due_at_accommodation_currency':
          cheapestRateDueAtAccommodationCurrency,
      'cheapest_rate_due_at_accommodation_amount':
          cheapestRateDueAtAccommodationAmount,
      'cheapest_rate_currency': cheapestRateCurrency,
      'cheapest_rate_base_currency': cheapestRateBaseCurrency,
      'cheapest_rate_base_amount': cheapestRateBaseAmount,
      'supported_negotiated_rates': supportedNegotiatedRates,
      'guests': guests.map((guest) => guest.toJson()).toList(),
      'accommodation': accommodation.toJson(),
    };
  }
}

class Guest {
  final int? age;
  final String type;

  Guest({
    this.age,
    required this.type,
  });

  factory Guest.fromJson(Map<String, dynamic> json) {
    return Guest(
      age: json['age'] as int?,
      type: json['type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'age': age,
      'type': type,
    };
  }
}

class Accommodation {
  final bool paymentInstructionSupported;
  final CheckInInformation checkInInformation;
  final double reviewScore;
  final int reviewCount;
  final int rating;
  final List<Rating> ratings;
  final List<Photo> photos;
  final String? supportedLoyaltyProgramme;
  final String? keyCollection;
  final List<Amenity> amenities;
  final List<dynamic> rooms;
  final String? brand;
  final String? phoneNumber;
  final String? chain;
  final String? email;
  final Location location;
  final String description;
  final String name;
  final String id;

  Accommodation({
    required this.paymentInstructionSupported,
    required this.checkInInformation,
    required this.reviewScore,
    required this.reviewCount,
    required this.rating,
    required this.ratings,
    required this.photos,
    this.supportedLoyaltyProgramme,
    this.keyCollection,
    required this.amenities,
    required this.rooms,
    this.brand,
    this.phoneNumber,
    this.chain,
    this.email,
    required this.location,
    required this.description,
    required this.name,
    required this.id,
  });

  factory Accommodation.fromJson(Map<String, dynamic> json) {
    return Accommodation(
      paymentInstructionSupported:
          json['payment_instruction_supported'] as bool,
      checkInInformation: CheckInInformation.fromJson(
          json['check_in_information'] as Map<String, dynamic>),
      reviewScore: (json['review_score'] as num).toDouble(),
      reviewCount: json['review_count'] as int,
      rating: json['rating'] as int,
      ratings: (json['ratings'] as List)
          .map((rating) => Rating.fromJson(rating as Map<String, dynamic>))
          .toList(),
      photos: (json['photos'] as List)
          .map((photo) => Photo.fromJson(photo as Map<String, dynamic>))
          .toList(),
      supportedLoyaltyProgramme:
          json['supported_loyalty_programme'] as String?,
      keyCollection: json['key_collection'] as String?,
      amenities: (json['amenities'] as List)
          .map((amenity) => Amenity.fromJson(amenity as Map<String, dynamic>))
          .toList(),
      rooms: json['rooms'] as List<dynamic>,
      brand: json['brand'] as String?,
      phoneNumber: json['phone_number'] as String?,
      chain: json['chain'] as String?,
      email: json['email'] as String?,
      location:
          Location.fromJson(json['location'] as Map<String, dynamic>),
      description: json['description'] as String,
      name: json['name'] as String,
      id: json['id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'payment_instruction_supported': paymentInstructionSupported,
      'check_in_information': checkInInformation.toJson(),
      'review_score': reviewScore,
      'review_count': reviewCount,
      'rating': rating,
      'ratings': ratings.map((rating) => rating.toJson()).toList(),
      'photos': photos.map((photo) => photo.toJson()).toList(),
      'supported_loyalty_programme': supportedLoyaltyProgramme,
      'key_collection': keyCollection,
      'amenities': amenities.map((amenity) => amenity.toJson()).toList(),
      'rooms': rooms,
      'brand': brand,
      'phone_number': phoneNumber,
      'chain': chain,
      'email': email,
      'location': location.toJson(),
      'description': description,
      'name': name,
      'id': id,
    };
  }
}

class CheckInInformation {
  final String? checkOutBeforeTime;
  final String? checkInBeforeTime;
  final String? checkInAfterTime;

  CheckInInformation({
    this.checkOutBeforeTime,
    this.checkInBeforeTime,
    this.checkInAfterTime,
  });

  factory CheckInInformation.fromJson(Map<String, dynamic> json) {
    return CheckInInformation(
      checkOutBeforeTime: json['check_out_before_time'] as String?,
      checkInBeforeTime: json['check_in_before_time'] as String?,
      checkInAfterTime: json['check_in_after_time'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'check_out_before_time': checkOutBeforeTime,
      'check_in_before_time': checkInBeforeTime,
      'check_in_after_time': checkInAfterTime,
    };
  }
}

class Rating {
  final String source;
  final int value;

  Rating({
    required this.source,
    required this.value,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      source: json['source'] as String,
      value: json['value'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'value': value,
    };
  }
}

class Photo {
  final String url;

  Photo({
    required this.url,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
    };
  }
}

class Amenity {
  final String description;
  final String type;

  Amenity({
    required this.description,
    required this.type,
  });

  factory Amenity.fromJson(Map<String, dynamic> json) {
    return Amenity(
      description: json['description'] as String,
      type: json['type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'type': type,
    };
  }
}

class Location {
  final GeographicCoordinates geographicCoordinates;
  final Address address;

  Location({
    required this.geographicCoordinates,
    required this.address,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      geographicCoordinates: GeographicCoordinates.fromJson(
          json['geographic_coordinates'] as Map<String, dynamic>),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'geographic_coordinates': geographicCoordinates.toJson(),
      'address': address.toJson(),
    };
  }
}

class GeographicCoordinates {
  final double latitude;
  final double longitude;

  GeographicCoordinates({
    required this.latitude,
    required this.longitude,
  });

  factory GeographicCoordinates.fromJson(Map<String, dynamic> json) {
    return GeographicCoordinates(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}

class Address {
  final String lineOne;
  final String cityName;
  final String postalCode;
  final String region;
  final String countryCode;

  Address({
    required this.lineOne,
    required this.cityName,
    required this.postalCode,
    required this.region,
    required this.countryCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      lineOne: json['line_one'] as String,
      cityName: json['city_name'] as String,
      postalCode: json['postal_code'] as String,
      region: json['region'] as String,
      countryCode: json['country_code'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'line_one': lineOne,
      'city_name': cityName,
      'postal_code': postalCode,
      'region': region,
      'country_code': countryCode,
    };
  }
}

