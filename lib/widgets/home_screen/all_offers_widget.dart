import 'package:flutter/material.dart';
import 'package:silk_road/widgets/home_screen/offer_widget.dart';

// ignore: must_be_immutable
class HomeOffersWidget extends StatelessWidget {
  HomeOffersWidget(
      {super.key,
      required this.physics,
      required this.mediaQuery,
      required this.offers,
      required this.length,
      required this.allOffers});
  final Size mediaQuery;
  final List offers;
  ScrollPhysics? physics;
  final List allOffers;

  final int length;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: physics,
      padding: EdgeInsets.only(
        bottom: mediaQuery.height / 20,
        right: mediaQuery.width / 30,
        left: mediaQuery.width / 30,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items in each row
        mainAxisSpacing: 20.0, // Spacing between rows
        crossAxisSpacing: mediaQuery.width / 30, // Spacing between columns
        childAspectRatio: 1.0, // Width to height ratio of grid items
      ),
      itemCount: length,
      itemBuilder: (context, index) {
        return OfferWidget(
          mediaQuery: mediaQuery,
          offers: offers[index],
          allOffersForShop: allOffers,
        );
      },
    );
  }
}
