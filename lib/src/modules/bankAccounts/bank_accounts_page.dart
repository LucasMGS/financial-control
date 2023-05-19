import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/core/utils/currency_format.dart';

class BankAccountPage extends StatelessWidget {
  const BankAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contas'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              tileColor: context.theme.colorScheme.tertiary,
              title: Row(
                children: [
                  Icon(Icons.wallet,
                      color: context.theme.colorScheme.onTertiary),
                  const SizedBox(width: 10),
                  Text(
                    'nubank',
                    style:
                        TextStyle(color: context.theme.colorScheme.onTertiary),
                  )
                ],
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: context.theme.colorScheme.onTertiary,
              ),
              subtitle: Text(
                'Saldo atual: ${toCurrencyFormat(2.000)}',
                style: TextStyle(color: context.theme.colorScheme.onTertiary),
              ),
            ),
          );
        },
      ),
    );
  }
}
