import 'package:flutter/material.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/screens/shop_details_screen.dart';
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
  final TextEditingController _searchController = TextEditingController();
  Map dataList = {};
  List<Map<String, dynamic>> filteredDataList = [];

  @override
  void initState() {
    super.initState();
    dataList = data.sectorsList
        .where((element) => element['id'] == widget.shopsId)
        .toList()
        .first;
    filteredDataList = [...dataList['shops']];
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void search() {
    String searchQuery = _searchController.text.toLowerCase();
    List<Map<String, dynamic>> finalData = [];
    print(dataList);
    setState(() {
      for (int i = 0; i < dataList['shops'].length; i++) {
        if (dataList['shops'][i]['name'].toLowerCase().contains(searchQuery)) {
          finalData.add(dataList['shops'][i]);
        }
      }
      filteredDataList = finalData;
    });
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
              dataList['image'],
              scale: mediaQuery.height / 50,
            ),
            Text(
              dataList['name'],
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
            margin: EdgeInsets.only(top: mediaQuery.height / 7),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      controller: _searchController,
                      onChanged: (value) {
                        search();
                      },
                      decoration: InputDecoration(
                        labelText: 'Search',
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              30.0), // Change this to your desired radius
                        ),
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: filteredDataList.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: filteredDataList[index]['status'] == 'closed'
                          ? null
                          : () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ShopDetailsScreen(
                                    shopDetails: filteredDataList[index],
                                  ),
                                ),
                              ),
                      child: ShopWidget(
                          shopId: filteredDataList[index]['id'].toString(),
                          status: filteredDataList[index]['status'],
                          subtitle: filteredDataList[index]['subtitle'],
                          mediaQuery: mediaQuery,
                          imageUrl: filteredDataList[index]['image'],
                          title: filteredDataList[index]['name']),
                    ),
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
