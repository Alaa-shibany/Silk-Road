import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/shop_details_screen/details_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/hero_image_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/more_info_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/rate_button.dart';

// ignore: must_be_immutable
class ShopDetailsScreen extends StatefulWidget {
  const ShopDetailsScreen({super.key, required this.shopDetails});
  final Map shopDetails;

  @override
  State<ShopDetailsScreen> createState() => _ShopDetailsScreenState();
}

class _ShopDetailsScreenState extends State<ShopDetailsScreen> {
  bool isRated = false;
  double userRate = 0;

  void showRate() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  isRated = true;
                  Navigator.pop(context);
                });
              },
              icon: const Icon(Icons.star),
              label: Text(LocaleKeys.ratenow.tr()))
        ],
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              userRate.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            RatingBar.builder(
              initialRating: userRate,
              minRating: 1,
              updateOnDrag: true,
              itemBuilder: (context, index) => const Icon(
                Icons.star_rate_rounded,
                color: Colors.amberAccent,
              ),
              onRatingUpdate: (value) {
                setState(() {
                  userRate = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      appBar: AppBar(
        actions: [
          RateButton(
            mediaQuery: mediaQuery,
            isRated: isRated,
            onPressed: () {
              showRate();
            },
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          HeroImageWidget(
              mediaQuery: mediaQuery, shopDetails: widget.shopDetails),
          SingleChildScrollView(
            child: Column(
              children: [
                DetailsWidget(
                    mediaQuery: mediaQuery, shopDetails: widget.shopDetails),
                MoreInfoWidget(
                    mediaQuery: mediaQuery, shopDetails: widget.shopDetails),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
