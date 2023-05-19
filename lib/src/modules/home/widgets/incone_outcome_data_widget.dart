import 'package:flutter/material.dart';
import 'package:monetine/src/core/utils/currency_format.dart';

class IncomeOutcomeDataWidget extends StatelessWidget {
  final bool? isIncome;
  final double value;
  const IncomeOutcomeDataWidget({
    Key? key,
    this.isIncome = false,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          isIncome! ? Icons.arrow_downward : Icons.arrow_upward,
          color: isIncome! ? Colors.green : Colors.red,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isIncome! ? 'Entrada' : 'Saída',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(fontWeight: FontWeight.w400),
              textAlign: TextAlign.start,
            ),
            Text(
              toCurrencyFormat(value),
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
