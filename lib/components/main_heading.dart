import 'package:flutter/material.dart'

 show BuildContext, Colors, FontWeight, StatelessWidget, Text, TextStyle, Widget;

class MainHeading extends StatelessWidget {
  const MainHeading({
    super.key,
     required this.heading,
  });

  final String heading;
  @override
  Widget build(BuildContext context) {
    return  Text(
      heading,
      style: TextStyle(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
