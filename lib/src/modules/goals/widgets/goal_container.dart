import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

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
                  child: const LinearProgressIndicator(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
