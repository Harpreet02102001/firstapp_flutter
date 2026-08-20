import 'package:flutter/material.dart';

import '../components/main_heading.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: MainHeading(heading: "Create an account"),
        actions: [Icon(Icons.notification_add), Icon(Icons.message)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(children: [
          Text("Activitity Screen"),
        ]),
      ),
    );
  }
}
