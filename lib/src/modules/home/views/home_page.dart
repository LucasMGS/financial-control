import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/home/controllers/home_controller.dart';
import 'package:monetine/src/modules/home/widgets/bar_chart.dart';
import 'package:monetine/src/modules/home/widgets/income_outcome_container.dart';
import 'package:monetine/src/modules/home/widgets/transaction_history.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monetine'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text(
              'Últimas transações',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Expanded(child: TransactionHistory()),
          ],
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        child: const Icon(Icons.add),
        childrenOffset: const Offset(4, 10),
        expandedFabSize: ExpandableFabSize.small,
        collapsedFabSize: ExpandableFabSize.regular,
        type: ExpandableFabType.up,
        fanAngle: 90,
        distance: 60,
        overlayStyle: ExpandableFabOverlayStyle(blur: 2.0),
        openButtonHeroTag: 'openHero',
        closeButtonHeroTag: 'closeFAB',
        children: [
          FloatingActionButton.small(
            onPressed: () {
              Get.toNamed(Routes.creditCard);
            },
            child: const Icon(Icons.credit_card),
          ),
          FloatingActionButton.small(
            child: const Icon(Icons.money_off),
            onPressed: () {},
          ),
          FloatingActionButton.small(
            child: const Icon(Icons.monetization_on),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
