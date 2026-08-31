import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/components/comman_loader.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firstapp/models/activity_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();

    getNotificationController.getNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommanAppbar(
        title: "Notification Screen",
        actionIcon: const Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        //play loader before getting the loader
        child: Obx(() {

          if (getNotificationController.isLoading.value) {
            return const CommanLoader(
              message: "Loading Notification",
            );
          }

          final notification = getNotificationController.notification.value;

          if (notification == null || notification.data.isEmpty) {
            return const Center(
              child: Text("No Notification yet"),
            );
          }

          return ListView.builder(
            itemCount: notification.data.length,
            itemBuilder: (context, index) {
              final item = notification.data[index];

              final message = item.message;

              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: item.isRead == 0
                      ? Colors.blue.shade50
                      : Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.09),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      item.isRead == 0 ? Icons.circle : Icons.circle_outlined,
                      size: 10,
                      color: item.isRead == 0
                          ? Colors.blue
                          : Colors.grey,
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Text(message,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: item.isRead == 0
                              ? FontWeight.w600
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }
}