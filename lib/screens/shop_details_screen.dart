import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:silk_road/styles/app_colors.dart';

// ignore: must_be_immutable
class ShopDetailsScreen extends StatefulWidget {
  ShopDetailsScreen({super.key, required this.shopDetails});
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
              label: const Text('rate now'))
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: mediaQuery.width / 30),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                showRate();
              },
              icon: isRated
                  ? Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amberAccent,
                      size: mediaQuery.height / 35,
                    )
                  : Icon(
                      Icons.star_border_sharp,
                      color: AppColors.darkPurpulColor,
                      size: mediaQuery.height / 35,
                    ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Hero(
            tag: widget.shopDetails['id'],
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
                widget.shopDetails['image'],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.width / 20,
                      vertical: mediaQuery.height / 50),
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
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Details',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: mediaQuery.height / 50),
                      ),
                      // SizedBox(
                      //   height: mediaQuery.height / 80,
                      // ),
                      Text(
                        widget.shopDetails['description'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: mediaQuery.height / 50),
                      ),
                      RatingBar.builder(
                        initialRating: widget.shopDetails['rate'],
                        minRating: 5,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amberAccent,
                        ),
                        onRatingUpdate: (value) {},
                      )
                    ],
                  ),
                ),
                Container(
                  // padding: EdgeInsets.symmetric(
                  //     horizontal: mediaQuery.width / 20,
                  //     vertical: mediaQuery.height / 50),
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
                        offset:
                            const Offset(0, 1), // changes position of shadow
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
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Text('Location'),
                                Icon(
                                  Iconsax.location_cross,
                                ),
                              ],
                            )),
                            Text('Damascus')
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        margin: EdgeInsets.only(
                            top: mediaQuery.height / 80,
                            bottom: mediaQuery.height / 50),
                        padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width / 20,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Text('state'),
                                Icon(
                                  Iconsax.unlock,
                                ),
                              ],
                            )),
                            Text('Damascus')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
