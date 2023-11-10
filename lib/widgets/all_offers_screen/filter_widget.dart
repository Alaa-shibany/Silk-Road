import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget(
      {super.key,
      required this.mediaQuery,
      required this.value,
      required this.onChanged,
      required this.menu,
      required this.filterTitle});
  final String filterTitle;
  final Size mediaQuery;
  final String? value;
  final void Function(String?)? onChanged;
  final List<String> menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: mediaQuery.width / 30),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black38, width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Text(
            filterTitle,
            style: TextStyle(fontSize: mediaQuery.width / 35),
          ),
          SizedBox(
            width: mediaQuery.width / 90,
          ),
          DropdownButton<String>(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            elevation: 10,
            style: const TextStyle(
                color: Colors.black87, fontWeight: FontWeight.bold),
            value: value,
            onChanged: onChanged,
            items: menu.map(
              (String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: mediaQuery.width / 35),
                    ),
                    onTap: () async {});
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
