import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../translations/locale_keys.g.dart';

class MoreInfoWidget extends StatelessWidget {
  const MoreInfoWidget(
      {super.key, required this.mediaQuery, required this.shopDetails});
  final Size mediaQuery;
  final Map shopDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: mediaQuery.width / 40,
          right: mediaQuery.width / 40,
          top: mediaQuery.width / 20),
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
        children: [
          Container(
            margin: EdgeInsets.only(
              top: mediaQuery.height / 50,
              bottom: mediaQuery.height / 80,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.width / 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Text(LocaleKeys.location.tr()),
                    SizedBox(
                      width: mediaQuery.width / 50,
                    ),
                    const Icon(
                      Iconsax.location_cross5,
                      color: Colors.red,
                    ),
                  ],
                )),
                Text(shopDetails['location'])
              ],
            ),
          ),
          const Divider(),
          Container(
            margin: EdgeInsets.only(
                top: mediaQuery.height / 80, bottom: mediaQuery.height / 50),
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.width / 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(LocaleKeys.workingtime.tr()),
                      SizedBox(
                        width: mediaQuery.width / 30,
                      ),
                      const Icon(
                        Iconsax.timer5,
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
                Text(shopDetails['open'])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
