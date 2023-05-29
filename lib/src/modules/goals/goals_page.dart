import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/core/shared/widgets/credit_card.dart';
import 'package:monetine/src/modules/goals/widgets/goal_container.dart';

class GoalsPage extends StatelessWidget {
  const GoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    const list = [
      CreditCard(titularCartao: 'asdasd', numCartao: 'aasdasdasdasd'),
      CreditCard(titularCartao: 'asdasd', numCartao: 'aasdasdasdasd'),
      CreditCard(titularCartao: 'asdasd', numCartao: 'aasdasdasdasd'),
      CreditCard(titularCartao: 'asdasd', numCartao: 'aasdasdasdasd'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objetivos'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Total acumulado'),
          Text('R\$ 14.500,11'),
          GoalContainer(),
          GoalContainer(),
          GoalContainer()
        ],
      ),
    );
  }
}
