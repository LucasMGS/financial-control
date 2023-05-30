import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/modules/createTransaction/create_transaction_controller.dart';

class SendTransaction extends GetView<CreateTransactionController> {
  const SendTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Valor',
                  hintText: 'R\$ 0,00',
                  // border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text('Selecione um cartão: '),
                  DropdownButtonHideUnderline(
                    child: Obx(() => DropdownButton<String>(
                          items: controller.cards
                              .map((card) => DropdownMenuItem(
                                    value: card,
                                    child: Text(card),
                                  ))
                              .toList(),
                          value: controller.selectedCard.value,
                          onChanged: (value) =>
                              controller.setSelectedCard(value!),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text('Selecione uma categoria: '),
                  DropdownButtonHideUnderline(
                    child: Obx(() => DropdownButton<String>(
                          items: controller.categories
                              .map((category) => DropdownMenuItem(
                                    value: category,
                                    child: Text(category),
                                  ))
                              .toList(),
                          value: controller.selectedCategory.value,
                          onChanged: (value) =>
                              controller.setSelectedCategory(value!),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
