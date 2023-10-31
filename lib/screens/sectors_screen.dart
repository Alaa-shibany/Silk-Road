import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/screens/shops_screen.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/home_screen/sector_widget.dart';

import '../common/BackgroundPaint.dart';
import '../models/size.dart';
import '../styles/app_text_styles.dart';

class SectorsScreen extends StatefulWidget {
  const SectorsScreen({super.key});

  @override
  State<SectorsScreen> createState() => _SectorsScreenState();
}

class _SectorsScreenState extends State<SectorsScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    controller.forward();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(LocaleKeys.sectors.tr(),
            textScaleFactor: ScaleSize1.textScaleFactor(context),
            textAlign: TextAlign.center,
            style: AppTextStyles.main),
      ),
      body: Stack(
        children: [
          CustomPaint(
              size: Size(
                  mediaQuery.width,
                  (mediaQuery.width * 0.5833333333333334)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automaticallypainter: AppBarCustom(),
              painter: AppBarCustom()),
          FadeTransition(
            opacity: animation,
            child: Container(
              margin: EdgeInsets.only(top: mediaQuery.height / 7),
              child: GridView.builder(
                padding: EdgeInsets.only(top: mediaQuery.height / 90),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of items in each row
                  mainAxisSpacing: 8.0, // Spacing between rows
                  crossAxisSpacing: 8.0, // Spacing between columns
                  childAspectRatio: 1.0, // Width to height ratio of grid items
                ),
                itemCount: data.sectorsList.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ShopsScreen(
                      shopsId: data.sectorsList[index]['id'],
                    ),
                  )),
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: mediaQuery.width / 50),
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQuery.width / 50,
                        vertical: mediaQuery.height / 90),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: const Color.fromARGB(255, 246, 246, 246),
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
                    child: SectorWidget(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
