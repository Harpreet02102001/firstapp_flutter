import 'package:flutter/material.dart';
import '../dashboard.dart';

class CommonButton extends StatelessWidget {
// this is a contructor property
  const CommonButton({
    super.key,
    required this.title, required this.onTab,
    //mention all the required here
  });

  final String title;
  final Function() onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,

            end: Alignment.bottomRight,
            colors: const [
              Color(0xFF283655),
              Color(0xFF53699A),
              Color(0xFF3F61AB),
            ],
            stops: const [0.0, 1.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
