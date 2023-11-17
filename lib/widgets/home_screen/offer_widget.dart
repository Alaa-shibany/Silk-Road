import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../styles/app_colors.dart';

class OfferWidget extends StatefulWidget {
  const OfferWidget(
      {super.key,
      required this.mediaQuery,
      required this.offers,
      required this.allOffersForShop});
  final Size mediaQuery;
  final Map offers;
  final List allOffersForShop;

  @override
  State<OfferWidget> createState() => _OfferWidgetState();
}

class _OfferWidgetState extends State<OfferWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: widget.mediaQuery.width / 2.5,
        height: widget.mediaQuery.height / 5,
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Hero(
                    tag:
                        '${widget.offers['shop']['id']}-${widget.offers['shop']['name']}',
                    child: Image.asset(
                      widget.offers['shop']['image'],
                      fit: BoxFit.cover,
                      height: widget.mediaQuery.height / 8,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(
                    height: widget.mediaQuery.height / 100,
                  ),
                  Text(
                    widget.offers['shop']['name'],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width / 30),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: widget.mediaQuery.width / 40),
                    child: Text(
                      widget.offers['shop']['offer']['offer'],
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 30),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widget.mediaQuery.width / 80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Iconsax.heart5,
                    size: MediaQuery.of(context).size.width / 15,
                    shadows: const <Shadow>[
                      Shadow(color: Colors.black26, blurRadius: 15.0)
                    ],
                    color: AppColors.sinkColor,
                  ),
                  Text(
                    widget.offers['shop']['offer']['likes'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 25,
                      shadows: const [
                        Shadow(
                          blurRadius: 0.0, // Spread of the shadow
                          color: Colors.white, // Shadow color
                          offset: Offset(1.0, 1.0), // Shadow offset
                        ),
                      ],
                    ),
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
