### Endpoint
```
GET: /v1/hotel/search
```

### Payload
```json
{
    "checkInDate": "2025-12-04",
    "checkOutDate": "2025-12-07",
    "longitude": -0.1416,
    "latitude": 51.5071,
    "radius": 2,
    "rooms": 1,
    "guests": [
        {
            "type": "adult"
        },
        {
            "type": "child", "age": 15
        }
    ]
}
```

- For guests, if adult just send type, if child you must send age which must be under 18.

- Send auth bearer token, for testing the API might accept without bearer. But when in production it will be set indefinately.

### Response of the search api
```json
{
    "count": 68,
    "hotels": [
        {
            "id": "srr_0000B0bsNLnKk73iV42XNh",
            "check_in_date": "2025-12-04",
            "check_out_date": "2025-12-07",
            "rooms": 1,
            "cheapest_rate_total_amount": "3208.05",
            "cheapest_rate_public_currency": "USD",
            "cheapest_rate_public_amount": "3208.05",
            "cheapest_rate_due_at_accommodation_currency": "USD",
            "cheapest_rate_due_at_accommodation_amount": "0.00",
            "cheapest_rate_currency": "USD",
            "cheapest_rate_base_currency": "USD",
            "cheapest_rate_base_amount": "2687.01",
            "supported_negotiated_rates": [],
            "guests": [
                {
                    "age": null,
                    "type": "adult"
                },
                {
                    "age": 15,
                    "type": "child"
                }
            ],
            "accommodation": {
                "payment_instruction_supported": false,
                "check_in_information": {
                    "check_out_before_time": "12:00",
                    "check_in_before_time": null,
                    "check_in_after_time": "15:00"
                },
                "review_score": 9.7,
                "review_count": 520,
                "rating": 5,
                "ratings": [
                    {
                        "source": "priceline",
                        "value": 5
                    }
                ],
                "photos": [
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123303.jpg?k=0ae8c393388895cdad6bd5d17c98996a92782c850779e5a5f6d30c1789abd431&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/220806736.jpg?k=feed204ee4ae579aeb19299c23b7a6ddacd4d91ce0fdd5efd6f88e071feb10be&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123351.jpg?k=fb5e70fc8c40786b65b737a051b4790131321ffb06ee1986d7c4fd6f003addb7&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123348.jpg?k=5f37898a65738b98724873475879414110dfd24cf116ec4bc0bfb9cbffd00f62&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123294.jpg?k=d8d9025074a6a636c60d872a69782766539f72ff5ab88d37d441725da337be5b&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123350.jpg?k=20500613e319ab3a466f64579f22f8dfe48714a468ad4fd9e5c75a891cb6321d&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/13750225.jpg?k=4c4f38f137eb4738bb88c53b09ae985ca1b5eb8382944d07bf4481b6ab5ff40b&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123312.jpg?k=8961d21090a3c0e11435327e77afc19b34447867e97f294f741f546e0f6b5eb9&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/220806696.jpg?k=1d297d23633084e2e734ea421a51c0532c5166e475b6c91330e7282b39413245&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123370.jpg?k=f44ccf65f5565163635e3798f9acc0c61976daa8ee2e595c065303c23da8f0f8&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123367.jpg?k=016ed0c0b20cb8326b0625915211f3564238d1106c293e2ca8ce8a7c03102043&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123326.jpg?k=2af31d706204f48496c53c916fe94f013d69a96941fdafa8dda0fb3b2e02fb0e&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123302.jpg?k=a966dfd50b3651d768daac1549dcdba3ef7bb3b423880d73352a41f769898efb&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/13750235.jpg?k=3ffa1c3c0f6dadd5924f5a59896543a27de8b40cf62c44ca4df68d860ac902ba&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123299.jpg?k=d0e243e8b73c7146726fce8e1bb16162280ded2e7505fe389d77a073e2c3ce5f&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123296.jpg?k=3f82db9ecc9cfd72458cead528c1abc7306b0a37602d9542a0eefcfb0b23ce9b&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123356.jpg?k=3b12271e7faea28caa91ba48cfe56045d29180cc61419b1f24c3393b1c9fa1a9&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/13750089.jpg?k=fdf65c82fb116f6a1c66e15e7776218f79bd0b1065a7a8c5e71879a69392e2dc&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123379.jpg?k=b4c3106c2ae2613c8738460db2cfc5f005e690bebd3b6e19a4289d2e95660c09&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123375.jpg?k=9c60c3c3ed5544d362ab52698988490bc270dbbcfce95ba85330a01904c7a5c6&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586829349.jpg?k=b5c629b32253a0631d738e74155c8f5f66c25a6a4320d169ce23158b672a6a51&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/13750229.jpg?k=32009f83a23c14aee29902b0c54dfca70ce40bf295e143e8a1f364495d9b2806&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123309.jpg?k=63662374b38f39fbc4b10f11a2178ee8fb39757264c6d123aa7fde3038850665&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123358.jpg?k=5a0d8bc59516d5ede1bb487d0d0e94f40a7a70dceb014fe5c30cdcadd186caea&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123334.jpg?k=632d5b6bde64ad203549632676c76310f905b9e890237f21d929d0fd0de76808&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123328.jpg?k=2fa3ccd0d7d5fc89c32eb488f7e361be01a856728e25344cea46a33f24087fa0&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/37874296.jpg?k=c27309ced9d2d3aa787858172c515e6e1ba95067ca36eb8bd99c7180caf5aa35&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123298.jpg?k=98eb592bd7c3f6154253b7db892a4f32a7acb0a53c7ada39fcac7584916df3de&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123323.jpg?k=9808a0aaa11780f8d9bf01f80047b0c0eb0addfc7b4494d0d5be2d0bff3129da&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123304.jpg?k=a629b3b90492d4912e8509956545d109aba953deb9faa04ed8e484c0ee5a5c03&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123324.jpg?k=13573d6058ea1073fefd90aa181cb623450870ad55007a1894074843f24b0640&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123354.jpg?k=af979ca042ddf7627288d1ce1f5e9d385a1a4e1f7b6264a69d132b45547dcb7a&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123307.jpg?k=32c9df80d5b5ccfc389623f32b1b273dd73db4c38ae38c9d58d3e198c9638336&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123295.jpg?k=26cccdba4549cd24abd7751e38e3cb6118e3dcd4bf3239ae49f732152fe9b1cd&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/13750065.jpg?k=7129d562195a44b5677979af7c778676f43f855ce817d0736305c909c00e0766&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123311.jpg?k=a469f08f64cd5b1a58de57f2798a8e9f37d291410b21a3b2bd6a6f3b55bac74c&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123315.jpg?k=958b298134574955f8c08db7a11b29d6522c04b5c11df9e47024770c041b287d&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/13882901.jpg?k=dd476bcba9d337168d3dc275294119086a39c370b1ed8fb1597b6ffbc8e423c4&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123376.jpg?k=ced2980b862b45a3b0c0cd290f0417a7c2c56b420b85ccdd15fc8982ffa23922&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123364.jpg?k=73557bb9cab8b1e1cbe623110ebe4f71bd5f58135ec102a56af22440b2373110&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123325.jpg?k=d7e3ad1e10757cffcee047523305cb353d8d396efddaca109ca14107f7f2472f&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/37874295.jpg?k=4baa2cab7fea836fa8fe0aa38daed71abca09f836d9177957e3db16e5e220ddd&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/625195707.jpg?k=3df37ce4ac99043f35a4536eb31811695c8b7780ab430fea41a40920bb20470d&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/700263523.jpg?k=cd6cc38029318b07013eca223d4b6f3bce1c71ff64b6034bf0201384f158c5c6&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/700263501.jpg?k=2c8285256b301ecac8b54b61c985c5bb2f5f896779a6503cad5e781e44cdbd05&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/586123378.jpg?k=7049390c2b2deb9887c0da509e9dfb4cb0cb2040c52f9b36f0a204ab762045e7&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/700263527.jpg?k=3582003231b88a46046281d5ab725b9b38a8111dcdc04666fc474469125eb54f&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/13882976.jpg?k=dc4c805249eae6125109932cbe794b622a84ccacc854d0a778017f3cdd311dc9&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/54570847.jpg?k=e393d40c05f897d14c0525a19755e7a055c1451c65ec8f9e36e07a318ae5e832&o="
                    },
                    {
                        "url": "https://q-xx.bstatic.com/xdata/images/hotel/max500/54570812.jpg?k=5e9a80f615006ef664d21efe3b466b3fdba8f642b58ff19ccb7b846963cdb861&o="
                    }
                ],
                "supported_loyalty_programme": null,
                "key_collection": null,
                "amenities": [
                    {
                        "description": "Laundry Service",
                        "type": "laundry"
                    },
                    {
                        "description": "Wi-Fi",
                        "type": "wifi"
                    },
                    {
                        "description": "24-Hour Front Desk",
                        "type": "24_hour_front_desk"
                    },
                    {
                        "description": "Concierge",
                        "type": "concierge"
                    },
                    {
                        "description": "Business Centre",
                        "type": "business_centre"
                    },
                    {
                        "description": "Pets Allowed",
                        "type": "pets_allowed"
                    },
                    {
                        "description": "Room Service",
                        "type": "room_service"
                    },
                    {
                        "description": "Childcare Services",
                        "type": "childcare_service"
                    },
                    {
                        "description": "Lounge",
                        "type": "lounge"
                    },
                    {
                        "description": "Parking",
                        "type": "parking"
                    },
                    {
                        "description": "Restaurant",
                        "type": "restaurant"
                    },
                    {
                        "description": "Wheelchair Access",
                        "type": "accessibility_mobility"
                    }
                ],
                "rooms": [],
                "brand": null,
                "phone_number": "44-207-3000041",
                "chain": null,
                "email": null,
                "location": {
                    "geographic_coordinates": {
                        "latitude": 51.498295,
                        "longitude": -0.143727
                    },
                    "address": {
                        "line_one": "41 Buckingham Palace Road",
                        "city_name": "London",
                        "postal_code": "SW1W0PS",
                        "region": "England",
                        "country_code": "GB"
                    }
                },
                "description": "A stay at Hotel 41 places you in the heart of London, within a 10-minute walk of Buckingham Palace and Green Park.  This luxury hotel is 0.6 mi (1 km) from Hyde Park and 0.3 mi (0.5 km) from Victoria Station Travel Information Centre.\n\nEnjoy Regional cuisine at Executive Lounge, a restaurant which features a bar/lounge, or stay in and take advantage of the 24-hour room service. English breakfasts are available daily from 6:30 AM to 11 AM for a fee.\n\nMake yourself at home in one of the 28 individually decorated guestrooms, featuring iPod docking stations and minibars. Plasma televisions with satellite programming provide entertainment, while complimentary wireless internet access keeps you connected. Private bathrooms with shower/tub combinations feature designer toiletries and hair dryers. Conveniences include phones, as well as safes and desks.",
                "name": "Hotel 41",
                "id": "acc_0000AWPsycjdP6n499jSfQ"
            }
        },
        ......
        ......
        ......
    ]
}
```