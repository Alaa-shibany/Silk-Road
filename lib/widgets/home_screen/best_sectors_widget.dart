import 'package:flutter/material.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/widgets/home_screen/sector_widget.dart';

class BestSectorsWidget extends StatelessWidget {
  const BestSectorsWidget({super.key, required this.mediaQuery});
  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: mediaQuery.width / 20),
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) => SectorWidget(
          badgeLabel: data.sectorsList[index]['shops'].length.toString(),
          padding: EdgeInsets.all(mediaQuery.height / 150),
          margin: EdgeInsets.symmetric(horizontal: mediaQuery.width / 25),
          mediaQuery: mediaQuery,
          icon: Image.asset(data.sectorsList[index]['image']),
          title: data.sectorsList[index]['name']),
    );
  }
}
