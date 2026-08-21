import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/main_heading.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  void initState() {
    //TODO : implement intiState
    super.initState();

    getActivityController.getActivity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(title: "Activity Screen"),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Obx(() {
          return getActivityController.activity.value == null
              ? const SizedBox.shrink()
              : ListView.builder(
            itemCount:
            getActivityController.activity.value!.data.length,
            itemBuilder: (context, i) {
              final item =
              getActivityController.activity.value!.data[i];

              return Text("${item.action}");
            },
          );
        }),
      ),
    );
  }
}