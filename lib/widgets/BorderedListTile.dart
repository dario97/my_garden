import 'package:flutter/material.dart';

class BorderedListTile extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Color borderColor;
  final double borderWidth;
  final Icon leading;
  final Widget trailing;

  static const double ELEVATION = 0;
  static const double RADIUS = 8;

  const BorderedListTile(
      {this.leading,
      this.borderColor = const Color(0xFF000000),
      this.borderWidth = 1,
      this.subtitle,
      this.title,
      this.trailing})
      : assert(borderColor != null),
        assert(borderWidth != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: ELEVATION,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: this.borderColor, width: this.borderWidth),
          borderRadius: BorderRadius.circular(RADIUS)),
      child: ListTile(
        isThreeLine: true,
        leading: this.leading,
        title: this.title,
        subtitle: this.subtitle,
        trailing: this.trailing,
      ),
    );
  }
}
