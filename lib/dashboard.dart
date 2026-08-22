import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/screens/activity_screen.dart';
import 'package:firstapp/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommanAppbar(
        title: "Dashboard Test",
        actionIcon: Icon(Icons.notifications, color: Colors.white),
        onActionPressed: (){
          Get.to(()=> NotificationScreen());
        },
      ),
      //  appBar: commonAppBar(title: "Dashboard test"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   "Dashboard Screen",
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                // ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => NotificationScreen());
                  },
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
                        Icon(Icons.notifications, color: Colors.white),
                        // Text(
                        //   'Notifications',
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(fontSize: 14, color: Colors.white),
                        // ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Get.to(() => ActivityScreen());
                  },
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
                        // Text(
                        //   'Activities',
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(fontSize: 14, color: Colors.white),
                        // ),
                        Icon(Icons.message, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
