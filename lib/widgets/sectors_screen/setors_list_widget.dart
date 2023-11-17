import 'package:flutter/material.dart';
import 'package:silk_road/data/dummy_data.dart';

import '../../screens/shops_screen.dart';
import '../home_screen/sector_widget.dart';

class SectorsListWidget extends StatelessWidget {
  const SectorsListWidget(
      {super.key, required this.animation, required this.mediaQuery});
  final Animation<double> animation;
  final Size mediaQuery;
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
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
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: mediaQuery.width / 50),
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
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: SectorWidget(
                  badgeLabel:
                      data.sectorsList[index]['shops'].length.toString(),
                  padding: EdgeInsets.all(mediaQuery.height / 150),
                  margin:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width / 25),
                  mediaQuery: mediaQuery,
                  icon: Image.asset(data.sectorsList[index]['image']),
                  title: data.sectorsList[index]['name']),
            ),
          ),
        ),
      ),
    );
  }
}
