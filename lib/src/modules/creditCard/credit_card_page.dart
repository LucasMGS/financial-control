import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/modules/creditCard/widgets/credit_card_slider.dart';
import 'package:monetine/src/core/constants/routes.dart';
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
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CreditCardSlider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Mês da fatura: ',
                      style: context.textTheme.bodyLarge,
                    ),
                    const SizedBox(width: 15),
                    DropdownButtonHideUnderline(
                      child: Obx(
                        () => SizedBox(
                          width: context.width * 0.6,
                          child: DropdownButton(
                            isExpanded: true,
                            items: controller.months
                                .map(
                                  (month) => DropdownMenuItem<String>(
                                    value: month,
                                    child: Text(month),
                                  ),
                                )
                                .toList(),
                            value: controller.selectedMonth.value,
                            onChanged: (value) {
                              controller.selectedMonth.value = value!;
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Valor da fatura',
                      style: context.textTheme.bodyLarge,
                    ),
                    Text(
                      'R\$ 50,00',
                      style: context.textTheme.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Limite',
                      style: context.textTheme.titleMedium!
                          .copyWith(color: Colors.red),
                    ),
                    Text(
                      'R\$ 1000,00',
                      style: context.textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
