// ignore: camel_case_types
import 'package:easy_localization/easy_localization.dart';
import 'package:silk_road/translations/locale_keys.g.dart';

// ignore: camel_case_types
class data {
  // ignore: non_constant_identifier_names
  static List dummy_data = [
    {
      'role': 'admin',
      'id': 0,
      'email': 'admin123@gmail.com',
      'password': '12345678'
    }
  ];

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
          "image": 'assets/images/resturants/resturant1.png',
          "location": "123 Main St, Cityville",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Make tako and showerma",
          "status": "closed",
          "offers": ["Free Dessert with Every Meal", "Happy Hour: 5 PM - 7 PM"]
        },
        {
          "id": 1,
          "rate": 3.0,
          "name": "Restaurant B",
          "image": 'assets/images/resturants/resturant2.png',
          "location": "456 Elm St, Townsville",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food and vegetarian  ",
          "status": "Open",
          "offers": ["10% off for Students", "Live Music on Fridays"]
        },
        {
          "id": 2,
          "rate": 2.0,
          "name": "Restaurant C",
          "image": 'assets/images/resturants/resturant3.png',
          "location": "789 Oak St, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food with delivery",
          "status": "Open",
          "offers": [
            "Lunch Buffet: 12 PM - 2 PM",
            "Buy One Get One Free: Pasta Dishes"
          ]
        },
        {
          "id": 3,
          "rate": 4.5,
          "name": "Restaurant D",
          "image": 'assets/images/offer3.png',
          "location": "789 Oak St, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food with delivery",
          "status": "Open",
          "offers": [
            "Lunch Buffet: 12 PM - 2 PM",
            "Buy One Get One Free: Pasta Dishes"
          ]
        },
        {
          "id": 4,
          "rate": 5.0,
          "name": "Restaurant E",
          "image": 'assets/images/offer2.png',
          "location": "789 Oak St, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food with delivery",
          "status": "Open",
          "offers": [
            "Lunch Buffet: 12 PM - 2 PM",
            "Buy One Get One Free: Pasta Dishes"
          ]
        },
        {
          "id": 5,
          "name": "Restaurant F",
          "rate": 1.0,
          "image": 'assets/images/offer1.png',
          "location": "789 Oak St, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food with delivery",
          "status": "Open",
          "offers": [
            "Lunch Buffet: 12 PM - 2 PM",
            "Buy One Get One Free: Pasta Dishes"
          ]
        }
      ]
    },
    {
      'id': 1,
      'name': LocaleKeys.bank.tr(),
      'image': 'assets/images/bank.png',
      'shops': [
        {
          "id": 0,
          "name": "Bank A",
          "rate": 5.0,
          "image": 'assets/images/bank/bank1.png',
          "location": "321 Bank St, Moneyville",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Personal and business banking services",
          "status": "Open",
          "offers": ["Free Checking Account", "Business Loans Available"]
        },
        {
          "id": 1,
          "name": "Bank B",
          "rate": 5.0,
          "image": 'assets/images/bank/bank1.png',
          "location": "555 Finance Ave, Wealthburg",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Savings and investment solutions",
          "status": "Open",
          "offers": [
            "High-Interest Savings Account",
            "Financial Planning Services"
          ]
        },
      ],
    },
    {
      'id': 2,
      'name': LocaleKeys.vehicles.tr(),
      'image': 'assets/images/vehicle.png',
      'shops': [
        {
          "id": 0,
          "name": "Car Rental A",
          "rate": 5.0,
          "image": "assets/images/cars/car1.png",
          "location": "123 Rental Ave, Cityville",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Economy, Sedan, and SUV Rentals",
          "status": "Open",
          "offers": ["Weekend Special: 20% off", "Free GPS with Every Rental"]
        },
        {
          "id": 1,
          "name": "Car Rental B",
          "rate": 5.0,
          "image": "assets/images/cars/car2.png",
          "location": "456 Drive St, Townsville",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Luxury and Sports Car Rentals",
          "status": "Open",
          "offers": [
            "10% off for Repeat Customers",
            "Free Car Wash with Return"
          ]
        },
        {
          "id": 2,
          "name": "Car Rental C",
          "rate": 5.0,
          "image": "assets/images/cars/car3.png",
          "location": "789 Highway Rd, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Family-friendly Minivans and SUVs",
          "status": "Closed",
          "offers": [
            "Monthly Rental: 15% Discount",
            "Child Car Seats Available"
          ]
        },
        {
          "id": 3,
          "name": "Car Rental D",
          "rate": 5.0,
          "image": "assets/images/cars/car4.png",
          "location": "101 Renting Blvd, Countryside",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Electric and Hybrid Car Rentals",
          "status": "Open",
          "offers": [
            "Green Fleet: Eco-friendly Options",
            "Free Charging Stations"
          ]
        },
        {
          "id": 4,
          "name": "Car Rental E",
          "rate": 5.0,
          "image": "assets/images/cars/car5.png",
          "location": "202 Rent Lane, Mountainview",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Budget-Friendly Compact Cars",
          "status": "Open",
          "offers": ["Unlimited Mileage Packages", "Senior Citizen Discounts"]
        },
        {
          "id": 5,
          "name": "Car Rental F",
          "rate": 5.0,
          "image": "assets/images/cars/car6.png",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "location": "303 Drive Way, Lakeside",
          "subtitle": "Off-Road and Adventure Vehicles",
          "status": "Open",
          "offers": [
            "4x4 Rentals for Outdoor Enthusiasts",
            "Roadside Assistance Included"
          ]
        }
      ],
    },
    {
      'id': 3,
      'name': LocaleKeys.health.tr(),
      'image': 'assets/images/beauty.png',
      'shops': [
        {
          "id": 0,
          "name": "Glow Beauty Clinic",
          "rate": 5.0,
          "image": "assets/images/beauty/beauty1.png",
          "location": "123 Beauty Street, Cityville",
          "subtitle": "Specializing in Skincare and Facial Treatments",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "status": "Open",
          "offers": [
            "Complimentary Skin Consultation",
            "10% Off First Treatment"
          ]
        },
        {
          "id": 1,
          "name": "Radiant Skin Clinic",
          "rate": 5.0,
          "image": "assets/images/beauty/beauty1.png",
          "location": "456 Complexion Avenue, Townsville",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Experts in Dermatology and Anti-Aging",
          "status": "Open",
          "offers": ["Botox and Dermal Filler Packages", "Customized Facials"]
        },
        {
          "id": 2,
          "name": "Elegance Wellness Center",
          "rate": 5.0,
          "image": "assets/images/beauty/beauty1.png",
          "location": "789 Beauty Boulevard, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Holistic Health and Beauty Solutions",
          "status": "Open",
          "offers": [
            "Massage Therapy: Relaxation and Deep Tissue",
            "Weight Loss Programs"
          ]
        },
        {
          "id": 3,
          "name": "Youthful Essence Clinic",
          "rate": 5.0,
          "image": "assets/images/beauty/beauty1.png",
          "location": "101 Ageless Lane, Countryside",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Specialists in Non-Surgical Facelifts",
          "status": "Open",
          "offers": ["PDO Thread Lifts", "Microdermabrasion Treatments"]
        },
        {
          "id": 4,
          "name": "Harmony Beauty Studio",
          "rate": 5.0,
          "image": "assets/images/beauty/beauty1.png",
          "location": "202 Serenity Street, Mountainview",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Hair, Nail, and Makeup Services",
          "status": "Open",
          "offers": ["Hair Coloring and Styling", "Manicures and Pedicures"]
        },
        {
          "id": 5,
          "name": "Pure Radiance Aesthetics",
          "rate": 5.0,
          "image": "assets/images/beauty/beauty1.png",
          "location": "303 Glow Avenue, Lakeside",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Cosmetic Procedures and Skin Rejuvenation",
          "status": "Open",
          "offers": ["Laser Hair Removal Packages", "PRP Therapy for Hair Loss"]
        }
      ],
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
}
