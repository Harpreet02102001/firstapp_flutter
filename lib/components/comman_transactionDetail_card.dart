import 'package:firstapp/components/comman_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommanTransactiondetailCard extends StatelessWidget {
  const CommanTransactiondetailCard(
    this.badgeName,
    this.transactionDetail, {
    super.key,
  });

  final String badgeName;
  final String transactionDetail;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffe4f1f2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //badge section start from here
                  child: Text(
                    badgeName,
                    style: TextStyle(
                      color: Color(0xff397786),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                CommanText(
                  title:
                      transactionDetail,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
