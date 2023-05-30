import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/core/enums/transaction_type.dart';
import 'package:monetine/src/modules/createTransaction/create_transaction_controller.dart';
import 'package:monetine/src/modules/createTransaction/widgets/receive_transaction_widget.dart';
import 'package:monetine/src/modules/createTransaction/widgets/send_transaction_widget.dart';

class CreateTransactionPage extends GetView<CreateTransactionController> {
  final TransactionType transactionType;
  const CreateTransactionPage({
    super.key,
    required this.transactionType,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: transactionType == TransactionType.enviar ? 0 : 1,
      length: 2,
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(),
              backgroundColor: context.theme.colorScheme.primaryContainer,
            ),
            child: const Icon(
              Icons.check,
              size: 40,
            ),
            onPressed: () {},
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            labelPadding: EdgeInsets.all(10),
            padding: EdgeInsets.only(bottom: 15),
            tabs: [
              Text('Enviar'),
              Text('Receber'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SendTransaction(),
            ReceiveTransaction(),
          ],
        ),
      ),
    );
  }
}
