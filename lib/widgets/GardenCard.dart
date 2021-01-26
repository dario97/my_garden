import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GardenCard extends StatelessWidget {
  final Color color;
  final double width;
  final double elevation;
  final String title;
  final String subtitle;
  final Icon icon;

  static const double CONTENT_PADDING = 5;
  GardenCard(
    this.icon,
    this.title,
    this.subtitle, {
    this.color,
    this.width,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      child: Card(
          child: _buildCardContent(),
          elevation: this.elevation,
          color: this.color),
    );
  }

  Widget _buildCardContent() {
    return Container(
      margin: EdgeInsets.all(CONTENT_PADDING),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: [
          Expanded(flex: 2, child: _buildIconRow()),
          Expanded(flex: 1, child: _buildDescription()),
        ],
      ),
    );
  }

  Widget _buildIconRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.ltr,
      children: [this.icon],
    );
  }

  Widget _buildDescription() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: [_buildTitle(), _buildSubtitle()],
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Flexible(
          child: Container(
            child: Text(
              this.title,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSubtitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.ltr,
      children: [
        Flexible(
          child: Container(
            child: Text(
              this.subtitle,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
        )
      ],
    );
  }
}
