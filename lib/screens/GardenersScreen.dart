import 'package:flutter/material.dart';

class GardenersScreen extends StatelessWidget {
  final String title = "Gardeners";

  GardenersScreen();

  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            height: 0,
            thickness: 2,
            color: themeData.colorScheme.surface,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Gardens",
                style: TextStyle(
                    color: themeData.colorScheme.onBackground,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 150,
                  child: Card(
                    child: Column(
                      children: [
                        Icon(Icons.nature),
                        Row(
                          children: [Text("Backyard Garden")],
                        ),
                      ],
                    ),
                    elevation: 1,
                    color: themeData.colorScheme.surface,
                  ),
                );
              },
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Needs your attention",
                style: TextStyle(
                    color: themeData.colorScheme.onBackground,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
          Expanded(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: themeData.colorScheme.surface, width: 2.5),
                      borderRadius: BorderRadius.circular(8)),
                  child: ListTile(
                    leading: Icon(Icons.warning, color: Colors.red),
                    title: Text(
                      "Plants need watering",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      "2 hours ago",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
