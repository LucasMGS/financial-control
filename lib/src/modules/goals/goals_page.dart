import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/goals/goals_controller.dart';
import 'package:monetine/src/modules/goals/widgets/goal_container.dart';

class GoalsPage extends GetView<GoalController> {
  const GoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objetivos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              Get.toNamed(Routes.createGoal);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total acumulado',
                    style: context.textTheme.titleLarge,
                  ),
                  Text(
                    'R\$ 14.500,11',
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            const GoalContainer(percent: 0.5, title: 'Carro', value: 15.000),
            const GoalContainer(
                percent: 0.3, title: 'Reserva de emergencia', value: 30.000),
            const GoalContainer(percent: 0.7, title: 'IPVA', value: 3.000),
            const GoalContainer(percent: 0.2, title: 'IPTU', value: 2.000),
          ],
        ),
      ),
    );
  }
}
