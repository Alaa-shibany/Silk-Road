import 'package:flutter/material.dart';

class HeroImageWidget extends StatelessWidget {
  const HeroImageWidget(
      {super.key, required this.mediaQuery, required this.shopDetails});
  final Size mediaQuery;
  final Map shopDetails;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: shopDetails['id'],
      child: Container(
        // margin: EdgeInsets.symmetric(
        //     horizontal: mediaQuery.width / 30),
        width: double.infinity,
        height: mediaQuery.height / 3,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Image.asset(
          shopDetails['image'],
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
