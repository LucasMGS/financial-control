import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:get/get.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/home/controllers/home_controller.dart';
import 'package:monetine/src/modules/home/widgets/bar_chart_widget.dart';
import 'package:monetine/src/modules/home/widgets/transaction_history.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BarChartWidget(),
              const SizedBox(height: 15),
              SizedBox(
                height: 100,
                width: context.width,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () => Get.toNamed(Routes.createTransaction),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: context.theme.colorScheme.primaryContainer,
                        ),
                        margin: const EdgeInsets.only(left: 10),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.upload),
                              Text('Enviar \$\$\$'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: context.theme.colorScheme.primaryContainer,
                      ),
                      margin: const EdgeInsets.only(left: 10),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.download),
                            Text('Receber \$\$\$'),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.goals),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: context.theme.colorScheme.primaryContainer,
                        ),
                        margin: const EdgeInsets.only(left: 10),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.check_box),
                              Text(
                                'Criar objetivo',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Atividades recentes',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Expanded(child: TransactionHistory()),
            ],
          ),
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
            heroTag: 'creditCardPage',
            onPressed: () {
              Get.toNamed(Routes.creditCard);
            },
            child: const Icon(Icons.credit_card),
          ),
          FloatingActionButton.small(
            heroTag: '',
            child: const Icon(Icons.money_off),
            onPressed: () {},
          ),
          FloatingActionButton.small(
            heroTag: 'aaaaaa',
            child: const Icon(Icons.monetization_on),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
