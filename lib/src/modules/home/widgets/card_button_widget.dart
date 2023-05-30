import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const CardButtonWidget(
      {super.key, required this.text, this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: context.theme.colorScheme.primaryContainer,
        ),
        margin: const EdgeInsets.only(left: 10),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
