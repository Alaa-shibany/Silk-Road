import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/shop_details_screen/details_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/hero_image_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/more_info_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/offer_shop_widget.dart';
import 'package:silk_road/widgets/shop_details_screen/rate_button.dart';

// ignore: must_be_immutable
class ShopDetailsScreen extends StatefulWidget {
  const ShopDetailsScreen({super.key, required this.id});
  final int id;

  @override
  State<ShopDetailsScreen> createState() => _ShopDetailsScreenState();
}

class _ShopDetailsScreenState extends State<ShopDetailsScreen> {
  bool isRated = false;
  double userRate = 0;
  Map shopDetails = {};
  bool isLoading = false;

  @override
  void initState() {
    setState(() {
      isLoading = true;
    });
    for (Map sector in data.sectorsList) {
      for (int i = 0; i < sector['shops'].length; i++) {
        if (sector['shops'][i]['id'] == widget.id) {
          setState(() {
            shopDetails = sector['shops'][i];
            isLoading = false;
          });
          break;
        }
      }
    }
    super.initState();
  }

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
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Text(
              LocaleKeys.RateTheStore.tr(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 90,
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
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      HeroImageWidget(
                          mediaQuery: mediaQuery, shopDetails: shopDetails),
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
                              onTap: () => print(shopDetails),
                              child: DetailsWidget(
                                  mediaQuery: mediaQuery,
                                  shopDetails: shopDetails),
                            ),
                            MoreInfoWidget(
                                mediaQuery: mediaQuery,
                                shopDetails: shopDetails),
                            SizedBox(
                              height: mediaQuery.height / 50,
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.only(
                                  bottom: mediaQuery.height / 40),
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: shopDetails['offers'].length,
                              itemBuilder: (context, index) {
                                bool isLiked = false;
                                return OfferShopWidget(
                                    mediaQuery: mediaQuery,
                                    isLiked: isLiked,
                                    offerImage: shopDetails['offers'][index]
                                        ['image'],
                                    offerTitle: shopDetails['offers'][index]
                                        ['offer'],
                                    likes: shopDetails['offers'][index]
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
