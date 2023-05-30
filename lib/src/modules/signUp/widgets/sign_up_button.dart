import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class SignUpButton extends StatelessWidget {
  final String assetPath;
  final String title;
  final void Function()? onTap;
  const SignUpButton(
      {super.key, required this.assetPath, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.8,
      child: ElevatedButton(
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              assetPath,
              height: 20,
              fit: BoxFit.fill,
            ),
            const Spacer(),
            Text(title),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
