import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  // this is a constructor property
  const DashboardCard({
    super.key,
    required this.icon,
    required this.title,
    // required this.icon,
  });
  final IconData icon;
  final String title;
  // final IconData icon;

  @override
  Widget build(BuildContext context) {
    //this (widget build ) returns the UI Widget
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Expanded(child: Text(title, style: const TextStyle(fontSize: 16))),
          // Text(
          //   title,
          //   style: const TextStyle(fontSize: 16),
          // ),
          // Text("120"),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
