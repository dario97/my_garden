import 'package:flutter/material.dart';
import 'package:my_garden/widgets/BorderedListTile.dart';
import 'package:my_garden/widgets/GardenCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  final String title = "Hello!";
  static const double SCREEN_MARGIN = 5;
  static MediaQueryData _mediaQueryData;
  static ThemeData _themeData;

  HomeScreen();
  @override
  Widget build(BuildContext context) {
    _themeData = Theme.of(context);
    _mediaQueryData = MediaQuery.of(context);

    return Container(
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
          _buildSectionTitle(
              "Your Gardens", _themeData.colorScheme.onBackground),
          _buildGardensList(),
          _buildSectionTitle(
              "Needs your attention", _themeData.colorScheme.onBackground),
          Expanded(child: _buildAttentionList()),
        ],
      ),
    );
  }

  Widget _buildGardensList() {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return GardenCard(
            Icon(
              FontAwesomeIcons.leaf,
              color: _themeData.colorScheme.primary,
            ),
            "Backyard Garden",
            "5 Plants",
            color: _themeData.colorScheme.surface,
            width: _mediaQueryData.size.width / 2.2,
            elevation: 1,
          );
        },
      ),
    );
  }

  Widget _buildAttentionList() {
    return Container(
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return BorderedListTile(
            borderColor: _themeData.colorScheme.surface,
            borderWidth: 2.8,
            leading: Icon(
              FontAwesomeIcons.tint,
              color: Colors.blueAccent,
            ),
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
          );
        },
      ),
    );
  }

  Widget _buildSectionTitle(String title, Color titleColor) {
    return Container(
      margin: EdgeInsets.only(left: SCREEN_MARGIN),
      child: Text(
        title,
        style: TextStyle(
            color: titleColor, fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
