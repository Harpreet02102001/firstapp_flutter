import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/components/transaction_card.dart';
import 'package:firstapp/components/comman_loader.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          padding: const EdgeInsets.all(8),

          child: Column(
            children: [
              //Tab Bar data and tabs will show here
              const TabBar(
                tabs: [
                  Tab(text: "Active"),
                  Tab(text: "Archived"),
                  Tab(text: "Closed "),
                ],
              ),

              SizedBox(height: 15),

              Expanded(
                child: Obx(() {
                  final transaction = getTransactionController.transaction.value;

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
