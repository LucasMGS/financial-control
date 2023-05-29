import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monetine/src/core/utils/four_last_card_numbers.dart';

class FrontCard extends StatelessWidget {
  final String numero;
  final String titular;
  const FrontCard({
    Key? key,
    required this.numero,
    required this.titular,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Colors.purple, Colors.deepPurple],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.2, 1]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(titular, style: context.textTheme.titleMedium),
                ],
              ),
            ),
            Flexible(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/chip.png',
                    height: 50,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.contactless_sharp,
                    size: 30,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(fourLastCardNumber(numero),
                      style: Theme.of(context).textTheme.bodyLarge!),
                  Image.asset(
                    'assets/images/logos/mastercard.png',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
