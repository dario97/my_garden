import 'package:flutter/material.dart';

class IconTextContainer extends StatelessWidget {
  static const double CONTENT_PADDING = 5;
  static const double RADIUS = 5;
  static const double ICON_MARGIN = 2;

  final Icon icon;
  final Text description;
  final Color color;
  final double height;
  final double width;
  final TextStyle textStyle;

  IconTextContainer(this.icon,
      {this.height, this.width, this.color, this.textStyle, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(CONTENT_PADDING),
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
            color: this.color, borderRadius: BorderRadius.circular(RADIUS)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.ltr,
            verticalDirection: VerticalDirection.down,
            children: [
              FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Container(
                      margin: EdgeInsets.all(ICON_MARGIN), child: this.icon)),
              FittedBox(
                fit: BoxFit.fitWidth,
                child: this.description,
              ),
            ]));
  }
}
