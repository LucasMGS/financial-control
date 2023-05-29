import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:monetine/src/modules/creditCard/credit_card_controller.dart';

class CreateCreditCardPage extends GetView<CreditCardController> {
  const CreateCreditCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          'Criar cartão de crédito',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      appBar: AppBar(title: const Text('Criar cartão de crédito')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Limite',
                    hintText: 'R\$ 0,00',

                    // border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Nome do cartão',
                    hintText: '0000 0000 0000 0000',
                    // border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Selecione um ícone')),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Fecha dia',
                          hintText: 'Selecione um ícone',
                          // border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Vence dia',
                          hintText: 'Selecione um ícone',
                          // border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: const Text('Selecionar conta'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
