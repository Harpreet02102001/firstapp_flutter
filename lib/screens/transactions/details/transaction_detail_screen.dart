import 'package:firstapp/components/comman_appbar.dart';
import 'package:firstapp/components/comman_text.dart';
import 'package:firstapp/components/comman_transactionDetail_card.dart';
import 'package:flutter/material.dart';

class TransactionDetailScreen extends StatefulWidget {
  const TransactionDetailScreen({super.key});

  @override
  State<TransactionDetailScreen> createState() =>
      _TransactionDetailScreenState();
}

class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommanAppbar(
        title: "Transaction Details",
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            CommanText(title: "# F0000790"),
            SizedBox(width: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              decoration: BoxDecoration(
                color: Color(0xffe4f1f2),
                borderRadius: BorderRadius.circular(8),
              ),
              //badge section start from here
              child: Text(
                "Active",
                style: TextStyle(
                  color: Color(0xff397786),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
