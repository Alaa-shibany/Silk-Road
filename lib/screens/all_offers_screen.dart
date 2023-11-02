import 'package:flutter/material.dart';
import 'package:silk_road/widgets/home_screen/all_offers_widget.dart';

import '../common/BackgroundPaint.dart';

class AllOffersScreen extends StatefulWidget {
  const AllOffersScreen({super.key, required this.offers});
  final List offers;

  @override
  State<AllOffersScreen> createState() => _AllOffersScreenState();
}

class _AllOffersScreenState extends State<AllOffersScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            CustomPaint(
                size: Size(
                    mediaQuery.width,
                    (mediaQuery.width * 0.5833333333333334)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automaticallypainter: AppBarCustom(),
                painter: AppBarCustom()),
            Container(
              margin: EdgeInsets.only(top: mediaQuery.height / 7),
              child: HomeOffersWidget(
                  physics: null,
                  mediaQuery: mediaQuery,
                  offers: widget.offers,
                  length: widget.offers.length),
            ),
          ],
        ));
  }
}
