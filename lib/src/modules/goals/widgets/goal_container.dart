import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class GoalContainer extends StatelessWidget {
  const GoalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.primaryContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: 100,
            width: 90,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/car.png',
                  ),
                  fit: BoxFit.fill,
                ),
                color: context.theme.colorScheme.onPrimaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Car',
                  style: context.textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  'R\$ 14.000',
                  style: context.textTheme.titleMedium,
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: context.width * 0.5,
                  child: LinearPercentIndicator(
                    animation: true,
                    lineHeight: 20.0,
                    animationDuration: 1200,
                    percent: 0.8,
                    center: const Text("80.0%"),
                    barRadius: const Radius.circular(10),
                    progressColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
