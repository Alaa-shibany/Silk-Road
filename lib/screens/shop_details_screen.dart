import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/shop_details_screen/details_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/hero_image_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/more_info_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/offer_shop_widget.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                HeroImageWidget(
                    mediaQuery: mediaQuery, shopDetails: widget.shopDetails),
                Container(
                  margin: EdgeInsets.only(
                      left: mediaQuery.width / 40,
                      right: mediaQuery.width / 40,
                      top: mediaQuery.width / 1.55),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => print(widget.shopDetails),
                        child: DetailsWidget(
                            mediaQuery: mediaQuery,
                            shopDetails: widget.shopDetails),
                      ),
                      MoreInfoWidget(
                          mediaQuery: mediaQuery,
                          shopDetails: widget.shopDetails),
                      SizedBox(
                        height: mediaQuery.height / 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mediaQuery.width / 22),
                        child: Text(
                          LocaleKeys.offers.tr(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: mediaQuery.height / 50),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        padding:
                            EdgeInsets.only(bottom: mediaQuery.height / 40),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.shopDetails['offers'].length,
                        itemBuilder: (context, index) {
                          bool isLiked = false;
                          return OfferShopWidget(
                              mediaQuery: mediaQuery,
                              isLiked: isLiked,
                              offerTitle: widget.shopDetails['offers'][index]
                                  ['offer'],
                              likes: widget.shopDetails['offers'][index]
                                  ['likes']);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
