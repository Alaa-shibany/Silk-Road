import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../translations/locale_keys.g.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget(
      {super.key, required this.mediaQuery, required this.shopDetails});
  final Size mediaQuery;
  final Map shopDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: mediaQuery.width / 20, vertical: mediaQuery.height / 50),
      margin: EdgeInsets.only(
          left: mediaQuery.width / 40,
          right: mediaQuery.width / 40,
          top: mediaQuery.width / 1.55),
      width: double.infinity,
      // height: mediaQuery.height / 3,
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 227, 227, 227),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.details.tr(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: mediaQuery.height / 50),
          ),
          Text(
            shopDetails['description'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: mediaQuery.height / 50),
          ),
          RatingBar.builder(
            initialRating: shopDetails['rate'],
            minRating: 5,
            itemBuilder: (context, index) => const Icon(
              Icons.star_rate_rounded,
              color: Colors.amberAccent,
            ),
            onRatingUpdate: (value) {},
          )
        ],
      ),
    );
  }
}
