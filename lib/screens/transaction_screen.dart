import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/components/comman_card.dart';
import 'package:firstapp/components/comman_loader.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:flutter/material.dart';
import '../models/transaction_model.dart';
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
    return Scaffold(
      appBar: CommanAppbar(
        title: "Transaction Screen",
        actionIcon: const Icon(Icons.search, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
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

                final title = item.title;


              return Column(
              children: [
              CommanCard(
              transactionId: '000005',
              badgeName: "Seller Section",
              // title: 'Seller QA – 350 5th Ave Unit 750238, New York, 10118',
              title: title,
              btnTitle: 'Connect Buyer Team',
              onButtonPressed: null,
              onMessagePressed: null,
              ),
              // CommanCard(
              // transactionId: '000005',
              // badgeName: "Seller Section",
              // title: 'Seller QA – 350 5th Ave Unit 750238, New York, 10118',
              // btnTitle: 'Connect Buyer Team',
              // onButtonPressed: null,
              // onMessagePressed: null,
              // ),
              ],
              );
              },
          );
        }),
      ),
    );
  }
}
