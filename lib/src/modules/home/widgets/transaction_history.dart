import 'package:flutter/material.dart';
import 'package:monetine/src/modules/home/widgets/transaction_widget.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) => const TransactionWidget(),
    );
  }
}
