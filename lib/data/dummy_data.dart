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
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "image": 'assets/images/resturants/resturant1.png',
          "location": "123 Main St, Cityville",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Make tako and showerma",
          "status": LocaleKeys.closed.tr(),
          "offers": [
            {
              "likes": 505,
              "offer": "Free Dessert with Every Meal",
            },
            {
              "likes": 505,
              "offer": "Happy Hour: 5 PM - 7 PM",
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
            },
            {"likes": 250, "offer": "Live Music on Fridays"}
          ]
        },
        {
          "id": 2,
          "rate": 2.0,
          "name": "Restaurant C",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "image": 'assets/images/resturants/resturant3.png',
          "location": "789 Oak St, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food with delivery",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {
              "likes": 100,
              "offer": "10% off for Students",
            },
            {"likes": 250, "offer": "Live Music on Fridays"}
          ]
        },
        {
          "id": 3,
          "rate": 4.5,
          "name": "Restaurant D",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "image": 'assets/images/offer3.png',
          "location": "789 Oak St, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food with delivery",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {
              "likes": 100,
              "offer": "10% off for Students",
            },
            {"likes": 250, "offer": "Live Music on Fridays"}
          ]
        },
        {
          "id": 4,
          "rate": 5.0,
          "name": "Restaurant E",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "image": 'assets/images/offer2.png',
          "location": "789 Oak St, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food with delivery",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {
              "likes": 100,
              "offer": "10% off for Students",
            },
            {"likes": 250, "offer": "Live Music on Fridays"}
          ]
        },
        {
          "id": 5,
          "name": "Restaurant F",
          "rate": 1.0,
          "image": 'assets/images/offer1.png',
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "location": "789 Oak St, Villageland",
          "description":
              " we pride ourselves on providing an exceptional dining experience that tantalizes your taste buds and leaves you coming back for more. Nestled in the heart of [Your City/Town], our restaurant offers a perfect blend of exquisite cuisine, cozy ambiance, and top-notch service.",
          "subtitle": "Fast food with delivery",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {
              "likes": 1500,
              "offer": "10% off for Students",
            },
            {"likes": 1000, "offer": "Live Music on Fridays"}
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
          "id": 6,
          "name": "Cityville Bank",
          "image": 'assets/images/bank/bank1.png',
          "location": "123 Main St, Cityville",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "subtitle": "Make tako and showerma",
          "description":
              "Cityville Bank is committed to providing top-notch banking services to our customers. With a wide range of financial products, including savings accounts, loans, and investment opportunities, we aim to help you achieve your financial goals.",
          "rate": 4.0,
          "status": LocaleKeys.open.tr(),
          "offers": [
            {"likes": 300, "offer": "Free Financial Consultation"},
            {"likes": 450, "offer": "0% Interest on First Loan"}
          ]
        },
        {
          "id": 7,
          "name": "Townsville Credit Union",
          "image": 'assets/images/bank/bank1.png',
          "location": "456 Elm St, Townsville",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 1.0,
          "description":
              "Townsville Credit Union is your community-oriented financial institution. We offer a variety of banking services, from checking accounts to credit cards, designed to meet the unique needs of our members.",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {"likes": 200, "offer": "Free Credit Score Check"},
            {"likes": 350, "offer": "Bonus Rewards on New Accounts"}
          ]
        },
        {
          "id": 8,
          "name": "Villageland National Bank",
          "image": 'assets/images/bank/bank1.png',
          "location": "789 Oak St, Villageland",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "description":
              "Villageland National Bank is your reliable partner in finance. Our experienced team offers business banking solutions, corporate loans, and wealth management services to support your financial success.",
          "status": LocaleKeys.closed.tr(),
          "offers": [
            {"likes": 150, "offer": "Exclusive Rewards for Business Clients"},
            {"likes": 270, "offer": "Personalized Investment Strategies"}
          ]
        }
      ]
    },
    {
      'id': 2,
      'name': LocaleKeys.vehicles.tr(),
      'image': 'assets/images/vehicle.png',
      'shops': [
        {
          "id": 9,
          "name": "Car Rental Company A",
          "image": 'assets/images/cars/car1.png',
          "location": "123 Main St, Cityville",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "description":
              "Explore the city with our wide range of rental cars. From compact cars to SUVs, we offer the perfect vehicle for your needs. Our cars are well-maintained and ready for your next adventure.",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {
              "likes": 505,
              "offer": "10% Off Weekly Rentals",
            },
            {
              "likes": 250,
              "offer": "Free Upgrade on Premium Cars",
            },
          ]
        },
        {
          "id": 10,
          "name": "Car Rental Company B",
          "image": 'assets/images/cars/car2.png',
          "location": "456 Elm St, Townsville",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "description":
              "Need a reliable car for your business trip or family vacation? Look no further. Our fleet of vehicles ensures you travel in comfort and style. Affordable rates and excellent service guaranteed.",
          "status": LocaleKeys.closed.tr(),
          "offers": [
            {
              "likes": 100,
              "offer": "15% Off for Loyalty Members",
            },
            {"likes": 150, "offer": "Free GPS with Every Rental"}
          ]
        },
        {
          "id": 11,
          "name": "Car Rental Company C",
          "image": 'assets/images/cars/car3.png',
          "location": "789 Oak St, Villageland",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "description":
              "Planning a road trip? We have the perfect car for your journey. Our friendly staff is here to assist you in choosing the right vehicle. Quality cars, great prices, and exceptional service.",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {
              "likes": 200,
              "offer": "20% Off Midweek Rentals",
            },
            {"likes": 180, "offer": "Free Child Seat with Family Rentals"}
          ]
        },
        {
          "id": 12,
          "name": "Car Rental Company A",
          "image": 'assets/images/cars/car4.png',
          "location": "123 Main St, Cityville",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "description":
              "Explore the city with our wide range of rental cars. From compact cars to SUVs, we offer the perfect vehicle for your needs. Our cars are well-maintained and ready for your next adventure.",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {
              "likes": 505,
              "offer": "10% Off Weekly Rentals",
            },
            {
              "likes": 250,
              "offer": "Free Upgrade on Premium Cars",
            },
          ]
        },
        {
          "id": 13,
          "name": "Car Rental Company B",
          "image": 'assets/images/cars/car5.png',
          "location": "456 Elm St, Townsville",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "description":
              "Need a reliable car for your business trip or family vacation? Look no further. Our fleet of vehicles ensures you travel in comfort and style. Affordable rates and excellent service guaranteed.",
          "status": LocaleKeys.closed.tr(),
          "offers": [
            {
              "likes": 100,
              "offer": "15% Off for Loyalty Members",
            },
            {"likes": 150, "offer": "Free GPS with Every Rental"}
          ]
        },
        {
          "id": 14,
          "name": "Car Rental Company C",
          "image": 'assets/images/cars/car6.png',
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "location": "789 Oak St, Villageland",
          "description":
              "Planning a road trip? We have the perfect car for your journey. Our friendly staff is here to assist you in choosing the right vehicle. Quality cars, great prices, and exceptional service.",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {
              "likes": 200,
              "offer": "20% Off Midweek Rentals",
            },
            {"likes": 180, "offer": "Free Child Seat with Family Rentals"}
          ]
        },
      ],
    },
    {
      'id': 3,
      'name': LocaleKeys.health.tr(),
      'image': 'assets/images/beauty.png',
      'shops': [
        {
          "id": 15,
          "name": "Cityville Spa & Wellness",
          "image": 'assets/images/beauty.png',
          "location": "123 Main St, Cityville",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "description":
              "Cityville Spa & Wellness offers a range of rejuvenating treatments, including massages, facials, and body scrubs. Our skilled therapists and tranquil atmosphere ensure a relaxing experience, promoting both health and beauty.",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {"likes": 200, "offer": "Complimentary Aromatherapy Upgrade"},
            {"likes": 350, "offer": "Weekend Couples Massage Package"}
          ]
        },
        {
          "id": 16,
          "name": "Glow Beauty Salon",
          "image": 'assets/images/beauty.png',
          "location": "456 Elm St, Townsville",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "description":
              "Glow Beauty Salon offers a range of beauty services, including haircuts, styling, and manicures. Our skilled stylists and beauticians stay updated with the latest trends to enhance your natural beauty.",
          "status": LocaleKeys.open.tr(),
          "offers": [
            {"likes": 180, "offer": "Free Hair Treatment with Haircut"},
            {"likes": 250, "offer": "Bridal Makeup Package"}
          ]
        },
        {
          "id": 17,
          "name": "Villageland Fitness Center",
          "image": 'assets/images/beauty.png',
          "location": "789 Oak St, Villageland",
          "subtitle": "Make tako and showerma",
          "open": "9:00 ${LocaleKeys.am.tr()} - 9:00 ${LocaleKeys.bm.tr()}",
          "rate": 5.0,
          "description":
              "Villageland Fitness Center offers state-of-the-art equipment, fitness classes, and personalized training programs. Our certified trainers are dedicated to helping you achieve your fitness and wellness goals.",
          "offers": [
            {"likes": 300, "offer": "Free Trial Yoga Class"},
            {"likes": 220, "offer": "Discounted Personal Training Package"}
          ]
        }
      ]
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
