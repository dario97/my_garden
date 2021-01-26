import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_garden/widgets/BorderedListTile.dart';
import 'package:my_garden/widgets/IconTextContainer.dart';

class GardenScreen extends StatelessWidget {
  static ThemeData _themeData;

  GardenScreen();

  @override
  Widget build(BuildContext context) {
    _themeData = Theme.of(context);
    return Scaffold(
        backgroundColor: _themeData.colorScheme.background,
        appBar: AppBar(
          backgroundColor: _themeData.colorScheme.background,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Backyard Garden",
            style: TextStyle(
                color: _themeData.colorScheme.onBackground,
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Container(
          child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(
                height: 2,
                thickness: 2,
                color: _themeData.colorScheme.surface,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return BorderedListTile(
                          borderColor: _themeData.colorScheme.surface,
                          borderWidth: 2.8,
                          title: Text(
                            "Peppermint",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: _buildContainerNeeded());
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget _buildContainerNeeded() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        textDirection: TextDirection.ltr,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Planted 2 weeks ago",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          IconTextContainer(
            Icon(
              Icons.favorite,
              color: _themeData.colorScheme.primary,
            ),
            description: Text(
              "No needs",
              style: TextStyle(
                  fontSize: 12,
                  color: _themeData.colorScheme.onBackground,
                  fontWeight: FontWeight.w600),
            ),
            color: _themeData.colorScheme.surface,
            height: 30,
          ),
        ],
      ),
    );
  }
}
