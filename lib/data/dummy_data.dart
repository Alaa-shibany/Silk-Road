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
          "name": "Restaurant A",
          "image": 'assets/images/resturants/resturant1.png',
          "location": "123 Main St, Cityville",
          "subtitle": "Make tako and showerma",
          "status": "closed",
          "offers": ["Free Dessert with Every Meal", "Happy Hour: 5 PM - 7 PM"]
        },
        {
          "id": 1,
          "name": "Restaurant B",
          "image": 'assets/images/resturants/resturant2.png',
          "location": "456 Elm St, Townsville",
          "subtitle": "Fast food and vegetarian  ",
          "status": "Open",
          "offers": ["10% off for Students", "Live Music on Fridays"]
        },
        {
          "id": 2,
          "name": "Restaurant C",
          "image": 'assets/images/resturants/resturant3.png',
          "location": "789 Oak St, Villageland",
          "subtitle": "Fast food with delivery",
          "status": "Open",
          "offers": [
            "Lunch Buffet: 12 PM - 2 PM",
            "Buy One Get One Free: Pasta Dishes"
          ]
        },
        {
          "id": 3,
          "name": "Restaurant D",
          "image": 'assets/images/offer3.png',
          "location": "789 Oak St, Villageland",
          "subtitle": "Fast food with delivery",
          "status": "Open",
          "offers": [
            "Lunch Buffet: 12 PM - 2 PM",
            "Buy One Get One Free: Pasta Dishes"
          ]
        },
        {
          "id": 4,
          "name": "Restaurant E",
          "image": 'assets/images/offer2.png',
          "location": "789 Oak St, Villageland",
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
          "image": 'assets/images/offer1.png',
          "location": "789 Oak St, Villageland",
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
          "image": 'assets/images/bank/bank1.png',
          "location": "321 Bank St, Moneyville",
          "subtitle": "Personal and business banking services",
          "status": "Open",
          "offers": ["Free Checking Account", "Business Loans Available"]
        },
        {
          "id": 1,
          "name": "Bank B",
          "image": 'assets/images/bank/bank1.png',
          "location": "555 Finance Ave, Wealthburg",
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
          "image": "assets/images/cars/car1.png",
          "location": "123 Rental Ave, Cityville",
          "subtitle": "Economy, Sedan, and SUV Rentals",
          "status": "Open",
          "offers": ["Weekend Special: 20% off", "Free GPS with Every Rental"]
        },
        {
          "id": 1,
          "name": "Car Rental B",
          "image": "assets/images/cars/car2.png",
          "location": "456 Drive St, Townsville",
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
          "image": "assets/images/cars/car3.png",
          "location": "789 Highway Rd, Villageland",
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
          "image": "assets/images/cars/car4.png",
          "location": "101 Renting Blvd, Countryside",
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
          "image": "assets/images/cars/car5.png",
          "location": "202 Rent Lane, Mountainview",
          "subtitle": "Budget-Friendly Compact Cars",
          "status": "Open",
          "offers": ["Unlimited Mileage Packages", "Senior Citizen Discounts"]
        },
        {
          "id": 5,
          "name": "Car Rental F",
          "image": "assets/images/cars/car6.png",
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
          "image": "assets/images/beauty/beauty1.png",
          "location": "123 Beauty Street, Cityville",
          "subtitle": "Specializing in Skincare and Facial Treatments",
          "status": "Open",
          "offers": [
            "Complimentary Skin Consultation",
            "10% Off First Treatment"
          ]
        },
        {
          "id": 1,
          "name": "Radiant Skin Clinic",
          "image": "assets/images/beauty/beauty1.png",
          "location": "456 Complexion Avenue, Townsville",
          "subtitle": "Experts in Dermatology and Anti-Aging",
          "status": "Open",
          "offers": ["Botox and Dermal Filler Packages", "Customized Facials"]
        },
        {
          "id": 2,
          "name": "Elegance Wellness Center",
          "image": "assets/images/beauty/beauty1.png",
          "location": "789 Beauty Boulevard, Villageland",
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
          "image": "assets/images/beauty/beauty1.png",
          "location": "101 Ageless Lane, Countryside",
          "subtitle": "Specialists in Non-Surgical Facelifts",
          "status": "Open",
          "offers": ["PDO Thread Lifts", "Microdermabrasion Treatments"]
        },
        {
          "id": 4,
          "name": "Harmony Beauty Studio",
          "image": "assets/images/beauty/beauty1.png",
          "location": "202 Serenity Street, Mountainview",
          "subtitle": "Hair, Nail, and Makeup Services",
          "status": "Open",
          "offers": ["Hair Coloring and Styling", "Manicures and Pedicures"]
        },
        {
          "id": 5,
          "name": "Pure Radiance Aesthetics",
          "image": "assets/images/beauty/beauty1.png",
          "location": "303 Glow Avenue, Lakeside",
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
