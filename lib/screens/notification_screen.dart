import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getNotificationController.getNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(title: "Notification Screen", ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Obx(() {
          return getNotificationController.notification.value == null?SizedBox.shrink():
          ListView.builder(
            itemCount: getNotificationController.notification.value?.data.length,

            itemBuilder: (c, i) {
              var item = getNotificationController.notification.value!.data[i];
              return Text("${item.action}");
            },
          );
        }),
      ),
    );
  }
}
