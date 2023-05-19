import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/creditCard/credit_card_controller.dart';

class CreditCardPage extends GetView<CreditCardController> {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.createCreditCard);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Container(),
    );
  }
}
