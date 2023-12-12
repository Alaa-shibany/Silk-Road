// ignore: camel_case_types
import 'package:easy_localization/easy_localization.dart';
import 'package:silk_road/translations/locale_keys.g.dart';

// ignore: camel_case_types
class data {
  // ignore: non_constant_identifier_names
  static List sectorsList = [
    {
      'id': 0,
      'name': LocaleKeys.resturants.tr(),
      'image': 'assets/images/resturant.png',
      'shops': [
        {
          "id": 0,
          "rate": 5.0,
          "name": "Restaurant A",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "image": 'assets/images/resturants/resturant3.png',
          "location": "123 Main St, Cityville",
          "description":
              " we pr ide ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Make tako and showerma",
          "status": LocaleKeys.closed.tr(),
          "offers": [
            {
              "likes": 505,
              "offer": "Free Dessert with Every Meal",
              "image": "assets/images/resturants/resturant3.png"
            },
            {
              "likes": 505,
              "offer": "Happy Hour: 5 PM - 7 PM",
              "image": "assets/images/resturants/resturant3.png"
            },
          ]
        },
        {
          "id": 1,
          "rate": 3.0,
          "name": "Restaurant B",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "image": 'assets/images/resturants/resturant2.png',
          "location": "456 Elm St, Townsville",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food and vegetarian  ",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {
              "likes": 100,
              "offer": "10% off for Students",
              "image": "assets/images/offer2.png",
            },
            {
              "likes": 250,
              "offer": "Live Music on Fridays",
              "image": "assets/images/offer3.png",
            }
          ]
        },
      ]
    },
    {
      'id': 1,
      'name': LocaleKeys.bank.tr(),
      'image': 'assets/images/bank.png',
      'shops': [
        // {
        //   "id": 6,
        //   "name": "Cityville Bank",
        //   "image": 'assets/images/bank/bank1.png',
        //   "location": "123 Main St, Cityville",
        //   "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
        //   "subtitle": "Make tako and showerma",
        //   "description":
        //       "Cityville Bank is committed to providing top-notch banking services to our customers. With a wide range of financial products, including savings accounts, loans, and investment opportunities, we aim to help you achieve your financial goals.",
        //   "rate": 4.0,
        //   "status": LocaleKeys.open.tr(),
        //   "offers": [
        //     {"likes": 300, "offer": "Free Financial Consultation"},
        //     {"likes": 450, "offer": "0% Interest on First Loan"}
        //   ]
        // },
      ]
    },
    {
      'id': 2,
      'name': LocaleKeys.vehicles.tr(),
      'image': 'assets/images/vehicle.png',
      'shops': [
        // {
        //   "id": 9,
        //   "name": "Car Rental Company A",
        //   "image": 'assets/images/cars/car1.png',
        //   "location": "123 Main St, Cityville",
        //   "subtitle": "Make tako and showerma",
        //   "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
        //   "rate": 5.0,
        //   "description":
        //       "Explore the city with our wide range of rental cars. From compact cars to SUVs, we offer the perfect vehicle for your needs. Our cars are well-maintained and ready for your next adventure.",
        //   "status": LocaleKeys.open.tr(),
        //   "offers": [
        //     {
        //       "likes": 505,
        //       "offer": "10% Off Weekly Rentals",
        //     },
        //     {
        //       "likes": 250,
        //       "offer": "Free Upgrade on Premium Cars",
        //     },
        //   ]
        // },
      ],
    },
    {
      'id': 3,
      'name': LocaleKeys.health.tr(),
      'image': 'assets/images/beauty.png',
      'shops': []
    },
    {
      'id': 4,
      'name': LocaleKeys.transportation.tr(),
      'image': 'assets/images/transportation.png',
      'shops': [],
    },
    {
      'id': 5,
      'name': LocaleKeys.security.tr(),
      'image': 'assets/images/security.png',
      'shops': [],
    },
    {
      'id': 6,
      'name': LocaleKeys.rental.tr(),
      'image': 'assets/images/rental.png',
      'shops': [],
    },
    {
      'id': 7,
      'name': LocaleKeys.lawyers.tr(),
      'image': 'assets/images/lawyer.png',
      'shops': [],
    },
    {
      'id': 8,
      'name': LocaleKeys.entertainment.tr(),
      'image': 'assets/images/entertainment.png',
      'shops': [],
    },
    {
      'id': 8,
      'name': LocaleKeys.bank.tr(),
      'image': 'assets/images/bank.png',
      'shops': [],
    },
    {
      'id': 9,
      'name': LocaleKeys.education.tr(),
      'image': 'assets/images/education.png',
      'shops': [],
    },
    {
      'id': 10,
      'name': LocaleKeys.malls.tr(),
      'image': 'assets/images/malls.png',
      'shops': [],
    },
    {
      'id': 11,
      'name': LocaleKeys.travel.tr(),
      'image': 'assets/images/travel&tourism.png',
      'shops': [],
    },
    {
      'id': 12,
      'name': LocaleKeys.communications.tr(),
      'image': 'assets/images/communication.png',
      'shops': [],
    },
    {
      'id': 13,
      'name': LocaleKeys.guide.tr(),
      'image': 'assets/images/guide.png',
      'shops': [],
    },
    {
      'id': 14,
      'name': LocaleKeys.planner.tr(),
      'image': 'assets/images/planner.png',
      'shops': [],
    },
  ];

  static List dummy_data = [
    {
      'role': 'admin',
      'id': 0,
      'name': 'admin',
      'email': 'admin123@gmail.com',
      'password': '12345678',
      'image': null,
      'nameOnCard': '',
      'numberOnCard': '',
      'expiryDate': '',
      'security': '',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 1,
      'name': 'User1',
      'email': 'User1@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user1',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 2,
      'name': 'User2',
      'email': 'User2@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user2',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 3,
      'name': 'User3',
      'email': 'User3@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user3',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 4,
      'name': 'User4',
      'email': 'User4@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user4',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 5,
      'name': 'User5',
      'email': 'User5@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user5',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 6,
      'name': 'User6',
      'email': 'User6@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user6',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 7,
      'name': 'User7',
      'email': 'User7@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user7',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 8,
      'name': 'User8',
      'email': 'User8@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user8',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 9,
      'name': 'User9',
      'email': 'User9@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user9',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
    {
      'role': 'tourist',
      'id': 10,
      'name': 'User10',
      'email': 'User10@gmail.com',
      'password': '11111111',
      'image': null,
      'nameOnCard': 'user10',
      'numberOnCard': '1111 1111 1111 1111',
      'expiryDate': '11/11',
      'security': '123',
      'balance': 1000,
    },
  ];

  void resetSectors() {
    List copy = [
      {
        'id': 0,
        'name': LocaleKeys.resturants.tr(),
        'image': 'assets/images/resturant.png',
        'shops': [
          {
            "id": 0,
            "rate": 5.0,
            "name": "Restaurant A",
            "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
            "image": 'assets/images/resturants/resturant3.png',
            "location": "123 Main St, Cityville",
            "description":
                " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
            "subtitle": "Make tako and showerma",
            "status": LocaleKeys.closed.tr(),
            "offers": [
              {
                "likes": 505,
                "offer": "Free Dessert with Every Meal",
                "image": "assets/images/resturants/resturant3.png"
              },
              {
                "likes": 505,
                "offer": "Happy Hour: 5 PM - 7 PM",
                "image": "assets/images/resturants/resturant3.png"
              },
            ]
          },
          {
            "id": 1,
            "rate": 3.0,
            "name": "Restaurant B",
            "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
            "image": 'assets/images/resturants/resturant2.png',
            "location": "456 Elm St, Townsville",
            "description":
                " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
            "subtitle": "Fast food and vegetarian  ",
            "status": LocaleKeys.open.tr(),
            "offers": [
              {
                "likes": 100,
                "offer": "10% off for Students",
                "image": "assets/images/offer2.png",
              },
              {
                "likes": 250,
                "offer": "Live Music on Fridays",
                "image": "assets/images/offer3.png",
              }
            ]
          },
        ]
      },
      {
        'id': 1,
        'name': LocaleKeys.bank.tr(),
        'image': 'assets/images/bank.png',
        'shops': [
          // {
          //   "id": 6,
          //   "name": "Cityville Bank",
          //   "image": 'assets/images/bank/bank1.png',
          //   "location": "123 Main St, Cityville",
          //   "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          //   "subtitle": "Make tako and showerma",
          //   "description":
          //       "Cityville Bank is committed to providing top-notch banking services to our customers. With a wide range of financial products, including savings accounts, loans, and investment opportunities, we aim to help you achieve your financial goals.",
          //   "rate": 4.0,
          //   "status": LocaleKeys.open.tr(),
          //   "offers": [
          //     {"likes": 300, "offer": "Free Financial Consultation"},
          //     {"likes": 450, "offer": "0% Interest on First Loan"}
          //   ]
          // },
        ]
      },
      {
        'id': 2,
        'name': LocaleKeys.vehicles.tr(),
        'image': 'assets/images/vehicle.png',
        'shops': [
          // {
          //   "id": 9,
          //   "name": "Car Rental Company A",
          //   "image": 'assets/images/cars/car1.png',
          //   "location": "123 Main St, Cityville",
          //   "subtitle": "Make tako and showerma",
          //   "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          //   "rate": 5.0,
          //   "description":
          //       "Explore the city with our wide range of rental cars. From compact cars to SUVs, we offer the perfect vehicle for your needs. Our cars are well-maintained and ready for your next adventure.",
          //   "status": LocaleKeys.open.tr(),
          //   "offers": [
          //     {
          //       "likes": 505,
          //       "offer": "10% Off Weekly Rentals",
          //     },
          //     {
          //       "likes": 250,
          //       "offer": "Free Upgrade on Premium Cars",
          //     },
          //   ]
          // },
        ],
      },
      {
        'id': 3,
        'name': LocaleKeys.health.tr(),
        'image': 'assets/images/beauty.png',
        'shops': []
      },
      {
        'id': 4,
        'name': LocaleKeys.transportation.tr(),
        'image': 'assets/images/transportation.png',
        'shops': [],
      },
      {
        'id': 5,
        'name': LocaleKeys.security.tr(),
        'image': 'assets/images/security.png',
        'shops': [],
      },
      {
        'id': 6,
        'name': LocaleKeys.rental.tr(),
        'image': 'assets/images/rental.png',
        'shops': [],
      },
      {
        'id': 7,
        'name': LocaleKeys.lawyers.tr(),
        'image': 'assets/images/lawyer.png',
        'shops': [],
      },
      {
        'id': 8,
        'name': LocaleKeys.entertainment.tr(),
        'image': 'assets/images/entertainment.png',
        'shops': [],
      },
      {
        'id': 8,
        'name': LocaleKeys.bank.tr(),
        'image': 'assets/images/bank.png',
        'shops': [],
      },
      {
        'id': 9,
        'name': LocaleKeys.education.tr(),
        'image': 'assets/images/education.png',
        'shops': [],
      },
      {
        'id': 10,
        'name': LocaleKeys.malls.tr(),
        'image': 'assets/images/malls.png',
        'shops': [],
      },
      {
        'id': 11,
        'name': LocaleKeys.travel.tr(),
        'image': 'assets/images/travel&tourism.png',
        'shops': [],
      },
      {
        'id': 12,
        'name': LocaleKeys.communications.tr(),
        'image': 'assets/images/communication.png',
        'shops': [],
      },
      {
        'id': 13,
        'name': LocaleKeys.guide.tr(),
        'image': 'assets/images/guide.png',
        'shops': [],
      },
      {
        'id': 14,
        'name': LocaleKeys.planner.tr(),
        'image': 'assets/images/planner.png',
        'shops': [],
      },
    ];
    sectorsList = [];
    print('We reset here');
    for (int i = 0; i < copy.length; i++) {
      sectorsList.add(copy[i]);
    }
  }
}
