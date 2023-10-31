import 'package:flutter/material.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/widgets/shops_screen/shop_widget.dart';

import '../common/BackgroundPaint.dart';

// ignore: must_be_immutable
class ShopsScreen extends StatefulWidget {
  ShopsScreen({super.key, required this.shopsId});
  int shopsId;

  @override
  State<ShopsScreen> createState() => _ShopsScreenState();
}

class _ShopsScreenState extends State<ShopsScreen> {
  List dataList = [];
  @override
  void initState() {
    super.initState();
    dataList = data.sectorsList
        .where((element) => element['id'] == widget.shopsId)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              dataList.first['image'],
              scale: mediaQuery.height / 90,
            ),
            Text(
              dataList.first['name'],
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
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
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: dataList.first['shops'].length,
              itemBuilder: (context, index) => ShopWidget(
                  status: dataList.first['shops'][index]['status'],
                  subtitle: dataList.first['shops'][index]['subtitle'],
                  mediaQuery: mediaQuery,
                  imageUrl: dataList.first['shops'][index]['image'],
                  title: dataList.first['shops'][index]['name']),
            ),
          ),
        ],
      ),
    );
  }
}
