import 'package:firstapp/components/comman_appbar.dart';
import 'package:flutter/material.dart';

class TransactionDetailScreen extends StatefulWidget {
  const TransactionDetailScreen({super.key});

  @override
  State<TransactionDetailScreen> createState() => _TransactionDetailScreenState();
}

class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommanAppbar(title: "Transaction Details", actionIcon: Icon(Icons.more_vert, color: Colors.white,),),
    );
  }
}
