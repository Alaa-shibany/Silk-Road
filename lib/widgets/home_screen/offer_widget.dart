import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../screens/shop_details_screen.dart';
import '../../styles/app_colors.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget(
      {super.key,
      required this.mediaQuery,
      required this.offers,
      required this.index});
  final Size mediaQuery;
  final List offers;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              ShopDetailsScreen(shopDetails: offers[index]['shop']),
        ));
      },
      child: Container(
        width: mediaQuery.width / 2.5,
        height: mediaQuery.height / 5,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Hero(
                  tag:
                      '${offers[index]['shop']['id']}-${offers[index]['shop']['name']}',
                  child: Image.asset(
                    offers[index]['shop']['image'],
                    fit: BoxFit.cover,
                    height: mediaQuery.height / 8,
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: mediaQuery.height / 100,
                ),
                Text(
                  offers[index]['shop']['name'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width / 40),
                  child: Text(
                    offers[index]['shop']['offer']['offer'],
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQuery.width / 80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Iconsax.heart5,
                    shadows: const <Shadow>[
                      Shadow(color: Colors.black26, blurRadius: 15.0)
                    ],
                    color: AppColors.sinkColor,
                  ),
                  Text(
                    offers[index]['shop']['offer']['likes'].toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
