import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/components/comman_loader.dart';
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
      appBar: CommanAppbar(
        title: "Activity Screen",
        actionIcon: Icon(Icons.more_vert_outlined, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
          child: Obx(() {
            //still loading -> Spinnder
            if (getActivityController.isLoading.value) {
              return const CommanLoader(message: "Loading Activity");
            }
            final activity = getActivityController.activity.value;

            //finished the loading but noting came back -> blank response
            if (activity == null || activity.data.isEmpty) {
              return const Center(child: Text("No Activity Yet"));
            }


            // return the data here, after compelte the fetch from the api
          return  ListView.builder(
                  itemCount: getActivityController.activity.value!.data.length,
                  itemBuilder: (context, i) {
                    final item = getActivityController.activity.value!.data[i];

                    // return Text("${item.action}");
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        // unread notifications get a light blue tint, read ones stay white
                        color: item.isRead == 0
                            ? Colors.blue.shade50
                            : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 6,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // unread = filled dot, read = outline
                          Icon(
                            item.isRead == 0
                                ? Icons.circle
                                : Icons.circle_outlined,
                            size: 10,
                            color: item.isRead == 0 ? Colors.blue : Colors.grey,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              item.action.name,

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
