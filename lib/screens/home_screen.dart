import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/screens/all_offers_screen.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/home_screen/best_sectors_widget.dart';
import 'package:silk_road/widgets/home_screen/all_offers_widget.dart';
import 'package:silk_road/widgets/home_screen/images_slider_widget.dart';

import '../common/BackgroundPaint.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List offers = [];
  bool isLoading = false;
  List allShops = [];
  late AnimationController controller;
  late Animation<double> animation;

  Future<void> getData() async {
    setState(() {
      isLoading = true;
    });
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < data.sectorsList[i]['shops'].length; j++) {
        for (int k = 0;
            k < data.sectorsList[i]['shops'][j]['offers'].length;
            k++) {
          offers.add(
            {
              "id": data.sectorsList[i]['id'],
              "name": data.sectorsList[i]['name'],
              "image": data.sectorsList[i]['image'],
              "shop": {
                "id": data.sectorsList[i]['shops'][j]['id'],
                "rate": data.sectorsList[i]['shops'][j]['rate'],
                "name": data.sectorsList[i]['shops'][j]['name'],
                "open": data.sectorsList[i]['shops'][j]['open'],
                "image": data.sectorsList[i]['shops'][j]['image'],
                "location": data.sectorsList[i]['shops'][j]['location'],
                "description": data.sectorsList[i]['shops'][j]['description'],
                "subtitle": data.sectorsList[i]['shops'][j]['subtitle'],
                "status": data.sectorsList[i]['shops'][j]['status'],
                "offer": data.sectorsList[i]['shops'][j]['offers'][k],
              },
            },
          );
        }
      }
    }

    for (int i = 0; i < data.sectorsList.length; i++) {
      for (int j = 0; j < data.sectorsList[i]['shops'].length; j++) {
        allShops.add(data.sectorsList[i]['shops'][j]);
      }
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    super.initState();
    getData();
    print(allShops);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
          Padding(
            padding: EdgeInsets.only(top: mediaQuery.height / 6),
            child: ImageSliderWidget(mediaQuery: mediaQuery),
          ),
          Padding(
            padding: EdgeInsets.only(top: mediaQuery.height / 2.5),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //this container has {sectors}
                    margin: EdgeInsets.only(
                        left: mediaQuery.width / 20,
                        right: mediaQuery.width / 20,
                        top: mediaQuery.height / 50),
                    child: Text(
                      LocaleKeys.sectors.tr(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: mediaQuery.height / 50),
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height / 8,
                    width: double.infinity,
                    child: BestSectorsWidget(mediaQuery: mediaQuery),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: mediaQuery.width / 20),
                    child: Row(
                      //this row has {offers       show all}
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys.offers.tr(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: mediaQuery.width / 25),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    AllOffersScreen(offers: offers),
                              ));
                            },
                            child: Text(
                              LocaleKeys.viewall.tr(),
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize:
                                    MediaQuery.of(context).size.width / 25,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height / 1.3,
                    width: double.infinity,
                    child: HomeOffersWidget(
                        allOffers: allShops,
                        physics: const NeverScrollableScrollPhysics(),
                        length: 6,
                        mediaQuery: mediaQuery,
                        offers: offers),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
