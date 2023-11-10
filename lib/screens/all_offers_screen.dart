import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/all_offers_screen/filter_widget.dart';
import 'package:silk_road/widgets/home_screen/all_offers_widget.dart';

import '../common/BackgroundPaint.dart';
import '../widgets/shops_screen/search_bar_widget.dart';

class AllOffersScreen extends StatefulWidget {
  const AllOffersScreen({super.key, required this.offers});
  final List offers;

  @override
  State<AllOffersScreen> createState() => _AllOffersScreenState();
}

class _AllOffersScreenState extends State<AllOffersScreen> {
  final TextEditingController _searchController = TextEditingController();
  List allOffers = [];
  List searchOffers = [];
  List<String> filterTopics = [];
  List<String> filterOrder = [
    LocaleKeys.fromhightolow.tr(),
    LocaleKeys.fromlowtohigh.tr()
  ];
  String? selectedTopicsFilter = LocaleKeys.fromhightolow.tr();
  String? selectedTopics2Filter = LocaleKeys.all.tr();

  void getTopics() {
    final Set<String> topics = {};
    topics.add(LocaleKeys.all.tr());
    for (final topic in widget.offers) {
      topics.add(topic['name']);
    }
    filterTopics = topics.toList();
    print(filterTopics);
  }

  @override
  void initState() {
    super.initState();
    allOffers = widget.offers;
    searchOffers = [...allOffers];
    searchOffers.sort((a, b) =>
        b['shop']['offer']['likes'].compareTo(a['shop']['offer']['likes']));
    getTopics();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void search() {
    String searchQuery = _searchController.text.toLowerCase();
    List<dynamic> finalData = [];

    setState(() {
      for (int i = 0; i < allOffers.length; i++) {
        if (allOffers[i]['shop']['offer']['offer']
            .toLowerCase()
            .contains(searchQuery)) {
          finalData.add(allOffers[i]);
        }
      }
      searchOffers = finalData;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(LocaleKeys.alloffers.tr()),
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
              margin: EdgeInsets.only(top: mediaQuery.height / 7),
              child: SearchBarWidget(
                searchController: _searchController,
                onChanged: (value) {
                  search();
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: mediaQuery.height / 4.7),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: mediaQuery.width / 90,
                    ),
                    FilterWidget(
                      mediaQuery: mediaQuery,
                      menu: filterOrder,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedTopicsFilter = newValue;
                          print(searchOffers);
                          if (newValue == LocaleKeys.fromhightolow.tr()) {
                            setState(() {
                              searchOffers.sort((a, b) => b['shop']['offer']
                                      ['likes']
                                  .compareTo(a['shop']['offer']['likes']));
                            });
                          } else if (newValue ==
                              LocaleKeys.fromlowtohigh.tr()) {
                            setState(() {
                              searchOffers.sort((a, b) => a['shop']['offer']
                                      ['likes']
                                  .compareTo(b['shop']['offer']['likes']));
                            });
                          }
                        });
                      },
                      value: selectedTopicsFilter,
                      filterTitle: LocaleKeys.orderby.tr(),
                    ),
                    SizedBox(
                      width: mediaQuery.width / 90,
                    ),
                    FilterWidget(
                      mediaQuery: mediaQuery,
                      menu: filterTopics,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedTopics2Filter = newValue;
                          List filter = [];
                          if (newValue == LocaleKeys.all.tr()) {
                            setState(() {
                              filter = allOffers;
                            });
                          } else {
                            setState(() {
                              filter = allOffers
                                  .where(
                                      (element) => element['name'] == newValue)
                                  .toList();
                            });
                          }
                          setState(() {
                            searchOffers = filter;
                          });
                        });
                      },
                      value: selectedTopics2Filter,
                      filterTitle: LocaleKeys.sectors.tr(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: mediaQuery.height / 3.5),
              child: HomeOffersWidget(
                physics: null,
                mediaQuery: mediaQuery,
                offers: searchOffers,
                length: searchOffers.length,
              ),
            ),
          ],
        ));
  }
}
