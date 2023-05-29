import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:monetine/src/modules/home/controllers/home_controller.dart';
import 'package:monetine/src/modules/home/widgets/bar_chart_widget.dart';
import 'package:monetine/src/modules/home/widgets/income_outcome_container.dart';

class StatisticsPage extends GetView<HomeController> {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text(
                //   'Transações',
                //   style: Theme.of(context).textTheme.titleMedium,
                // ),
                const Spacer(),
                const Text('Gráfico pizza'),
                Obx(
                  () => Switch.adaptive(
                    inactiveThumbColor: Theme.of(context).primaryColor,
                    value: controller.showPizzaGraph.value,
                    onChanged: (newValue) {
                      controller.showPizzaGraph.value = newValue;
                    },
                  ),
                ),
                // const SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 10),
            const BarChartWidget(),
            const SizedBox(height: 10),
            const IncomeOutcomeContainer(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
