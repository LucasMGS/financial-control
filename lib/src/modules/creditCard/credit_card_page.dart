import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/core/shared/widgets/credit_card.dart';
import 'package:monetine/src/modules/creditCard/credit_card_controller.dart';

class CreditCardPage extends GetView<CreditCardController> {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartões de crédito'),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.createCreditCard);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: const CreditCard(
          numCartao: '797979797979',
          senhaCartao: '123',
          titularCartao: '123',
          mostrarNumeroCartao: false),
    );
  }
}
