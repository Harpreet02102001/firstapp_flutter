import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/components/transaction_card.dart';
import 'package:firstapp/components/comman_loader.dart';
import 'package:firstapp/constants/app_colors.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  void initState() {
    super.initState();
    getTransactionController.getTransaction();
  }

  final tabController = getTransactionController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // length means = how many tab is required
      length: 3,
      child: Scaffold(
        appBar: CommanAppbar(
          title: "Transaction Screen",
          actionIcon: const Icon(Icons.search, color: Colors.white),
        ),

        body: Padding(
          padding: const EdgeInsets.only(
            left: 0,
            right: 0,
          ),
          child: Column(
            children: [
              SizedBox(height: 5,),

              Obx(() {
                if (tabController.isTabLoading.value) {
                  return const SizedBox(
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                if (tabController.tabs.isEmpty) {
                  return const SizedBox(
                    child: Center(
                      child: Text("No transaction status found"),
                    ),
                  );
                }

                return Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3E7EF),
                    // borderRadius: BorderRadius.circular(14),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: TabBar(
                    isScrollable: true,

                    // Allow continuous horizontal scrolling
                    physics: const BouncingScrollPhysics(),

                    // Start from the left
                    tabAlignment: TabAlignment.start,

                    // Remove default padding
                    padding: EdgeInsets.zero,

                    // Selected tab
                    indicator: BoxDecoration(
                      color: const Color(0xFF344B78),
                      borderRadius: BorderRadius.circular(5),
                    ),

                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.zero,

                    // Selected text
                    labelColor: Colors.white,
                    labelStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),

                    // Unselected text
                    unselectedLabelColor: const Color(0xFF707888),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),

                    dividerColor: Colors.transparent,

                    onTap: tabController.changeTab,

                    tabs: tabController.tabs.map((tab) {
                      return Tab(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 28,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(tab.name),

                              const SizedBox(width: 6),

                              Text('(${tab.count})'),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              }),


              // SizedBox(height: 15),

              Expanded(
                child: Obx(() {
                  final transaction =
                      getTransactionController.transaction.value;

                  if (getTransactionController.isLoading.value) {
                    return CommanLoader(message: "Loading Transaction");
                  }

                  //take a variable than proceed with that variable and get the data
                  //from the model - TransactionModel
                  return ListView.builder(
                    itemCount: transaction!.data.length,
                    itemBuilder: (context, index) {
                      final item = transaction.data[index];

                      final fileNo = item.fileNo;
                      final title = item.title;
                      final badgeName = item.clientType.name;

                      return Column(
                        children: [
                          CommanCard(
                            transactionId: fileNo,
                            badgeName: badgeName,
                            // title: 'Seller QA – 350 5th Ave Unit 750238, New York, 10118',
                            title: title,
                            btnTitle: 'Connect Buyer Team',
                            onButtonPressed: null,
                            onMessagePressed: null,
                          ),
                        ],
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Write your home navigation code here
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
