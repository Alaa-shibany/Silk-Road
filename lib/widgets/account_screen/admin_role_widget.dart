import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/widgets/shops_screen/search_bar_widget.dart';

import '../../screens/start_screen.dart';
import '../../translations/locale_keys.g.dart';

// ignore: must_be_immutable
class AdminRoleWidget extends StatefulWidget {
  AdminRoleWidget(
      {super.key, required this.mediaQuery, required this.selectedLanguage});
  final Size mediaQuery;
  late String selectedLanguage;

  @override
  State<AdminRoleWidget> createState() => _AdminRoleWidgetState();
}

class _AdminRoleWidgetState extends State<AdminRoleWidget> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> filteredDataList = [];

  @override
  void initState() {
    filteredDataList = [...data.dummy_data];
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void search() {
    String searchQuery = _searchController.text.toLowerCase();
    List<Map<String, dynamic>> finalData = [];
    setState(() {
      for (int i = 0; i < data.dummy_data.length; i++) {
        if (data.dummy_data[i]['name'].toLowerCase().contains(searchQuery)) {
          finalData.add(data.dummy_data[i]);
        }
      }
      filteredDataList = finalData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 230, 156),
          leading: IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  StartScreen.routName, (Route<dynamic> route) => false);
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widget.mediaQuery.width / 30),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton<String>(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    elevation: 10,
                    style: const TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                    value: widget.selectedLanguage,
                    onChanged: (String? newValue) {
                      setState(() {
                        widget.selectedLanguage = newValue!;
                        filteredDataList = filteredDataList;
                      });
                    },
                    items: <String>[
                      'العربية',
                      'فارسی',
                      'Русский',
                      'Français',
                      'English'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                          onTap: () async {
                            setState(() {
                              value == 'العربية'
                                  ? context.setLocale(const Locale('ar'))
                                  : value == 'فارسی'
                                      ? context.setLocale(const Locale('fa'))
                                      : value == 'Русский'
                                          ? context
                                              .setLocale(const Locale('ru'))
                                          : value == 'Français'
                                              ? context
                                                  .setLocale(const Locale('fr'))
                                              : context.setLocale(
                                                  const Locale('en'));
                              data().resetSectors();
                            });
                          });
                    }).toList(),
                  ),
                  SizedBox(
                    width: widget.mediaQuery.width / 30,
                  ),
                  Icon(
                    Icons.language,
                    color: Colors.black26,
                    size: widget.mediaQuery.width / 20,
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: widget.mediaQuery.height / 60,
            ),
            SearchBarWidget(
              searchController: _searchController,
              onChanged: (value) {
                search();
              },
            ),
            SizedBox(
              height: widget.mediaQuery.height / 60,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: filteredDataList
                    .where(
                      (element) => element['role'] == 'tourist',
                    )
                    .toList()
                    .length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> account = filteredDataList
                      .where(
                        (element) => element['role'] == 'tourist',
                      )
                      .toList()[index];
                  return Container(
                    margin: EdgeInsets.symmetric(
                        vertical: widget.mediaQuery.height / 100,
                        horizontal: widget.mediaQuery.width / 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                    child: ExpansionTile(
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            filteredDataList.removeAt(index);
                          });
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      clipBehavior: Clip.hardEdge,
                      leading: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: widget.mediaQuery.width / 100,
                            vertical: widget.mediaQuery.height / 300),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                            backgroundImage: account['image'] == null
                                ? null
                                : FileImage(account['image']),
                            radius: widget.mediaQuery.width / 18,
                            child: account['image'] == null
                                ? const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  )
                                : const SizedBox(
                                    width: 0,
                                  )),
                      ),
                      title: Text(account['name']),
                      children: [
                        ListTile(
                          title: Text(LocaleKeys.user.tr()),
                          trailing: Text(
                            account['role'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: widget.mediaQuery.width / 30,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(LocaleKeys.email.tr()),
                          trailing: Text(
                            account['email'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: widget.mediaQuery.width / 30,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(LocaleKeys.nameoncard.tr()),
                          trailing: Text(
                            account['nameOnCard'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: widget.mediaQuery.width / 30,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            LocaleKeys.currentBalance.tr(),
                          ),
                          trailing: Text(
                            '${account['balance']}\$',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: widget.mediaQuery.width / 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
