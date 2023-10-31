import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/models/constants.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/home_screen/images_slider_widget.dart';

import '../common/BackgroundPaint.dart';
import '../widgets/home_screen/sector_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            margin: EdgeInsets.only(top: mediaQuery.height / 6),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageSliderWidget(mediaQuery: mediaQuery),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width / 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.sectors.tr(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: mediaQuery.height / 50),
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              Constants.index = 2;
                            });
                          },
                          child: Text(
                            LocaleKeys.viewall.tr(),
                            style: const TextStyle(color: Colors.blueAccent),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding:
                        EdgeInsets.symmetric(horizontal: mediaQuery.width / 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) => SectorWidget(
                        badgeLabel:
                            data.sectorsList[index]['shops'].length.toString(),
                        padding: EdgeInsets.all(mediaQuery.height / 150),
                        margin: EdgeInsets.symmetric(
                            horizontal: mediaQuery.width / 25),
                        mediaQuery: mediaQuery,
                        icon: Image.asset(data.sectorsList[index]['image']),
                        title: data.sectorsList[index]['name']),
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
