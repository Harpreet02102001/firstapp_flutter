import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/components/common_button.dart';
import 'package:firstapp/screens/activity_screen.dart';
import 'package:firstapp/screens/login_screen.dart';
import 'package:firstapp/screens/notification_screen.dart';
import 'package:firstapp/screens/transaction_screen.dart';
import 'package:firstapp/screens/transactions/details/transaction_detail_screen.dart';
import 'package:firstapp/util/app_data.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:firstapp/util/shared_pref/shared_keys.dart';
import 'package:firstapp/util/shared_pref/shared_preference_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initLocalToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommanAppbar(
        title: "Dashboard Screen",

        actions: [
          InkWell(
            onTap: () {
              Get.to(TransactionScreen());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.inbox, color: Colors.white),
            ),
          ),

          InkWell(
            onTap: () {
              Get.to(NotificationScreen());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications, color: Colors.white),
            ),
          ),
        ],
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

                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Get.to(() => TransactionDetailScreen());
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
                        Icon(Icons.payment, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            //Logout button
            CommonButton(
              title: "Logout ",
              onTab: () {
                getAuthController.logout();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> initLocalToken() async {
    final String? token = await SharedPreferenceUtil.getLocalString(
      key: SharedKeys().authTokenKey,
    );
    AppData.authToken = token ?? "";
  }
}
