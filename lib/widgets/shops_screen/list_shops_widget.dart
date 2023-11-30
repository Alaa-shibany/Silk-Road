import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/widgets/shops_screen/shop_widget.dart';

import '../../screens/shop_details_screen.dart';
import '../../translations/locale_keys.g.dart';

class ShopListWidget extends StatelessWidget {
  const ShopListWidget(
      {super.key, required this.filteredDataList, required this.mediaQuery});
  final List<Map<String, dynamic>> filteredDataList;
  final Size mediaQuery;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: filteredDataList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: filteredDataList[index]['status'] == LocaleKeys.closed.tr()
              ? null
              : () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ShopDetailsScreen(
                        id: filteredDataList[index]['id'],
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
    );
  }
}
