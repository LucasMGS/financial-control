import 'package:flutter/material.dart';
import 'package:monetine/src/pages/home/widgets/incone_outcome_data_widget.dart';

class IncomeOutcomeContainer extends StatelessWidget {
  const IncomeOutcomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: const Offset(-0.3, -0.5),
            blurRadius: 2,
            // blurStyle: BlurStyle.inner,
            spreadRadius: 1,
          )
        ],
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(15),
      ),
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 10),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const IncomeOutcomeDataWidget(
            isIncome: true,
            value: 20.000,
          ),
          Container(
            height: 40,
            width: 1,
            color: Colors.grey,
          ),
          const IncomeOutcomeDataWidget(
            isIncome: false,
            value: 15.000,
          ),
        ],
      ),
    );
  }
}
