import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(
            Theme.of(context).primaryColor,
            Icons.call,
            'Call',
          ),
          _buildButtonColumn(
            Theme.of(context).primaryColor,
            Icons.near_me,
            'ROUTE',
          ),
          _buildButtonColumn(
            Theme.of(context).primaryColor,
            Icons.share,
            'SHARE',
          ),
        ],
      ),
    );
  }
}
