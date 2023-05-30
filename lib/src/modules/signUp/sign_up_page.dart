import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:monetine/src/modules/signUp/widgets/sign_up_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Como você cuida do seu dinheiro?',
              style: context.textTheme.titleLarge,
            ),
            const SizedBox(height: 5),
            Text(
              'Crie uma conta ou faça login!',
              style: context.textTheme.titleMedium,
            ),
            const SizedBox(height: 30),
            SignUpButton(
              assetPath: 'assets/images/logos/facebook.png',
              title: 'Continue com facebook',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            SignUpButton(
              assetPath: 'assets/images/logos/google.png',
              title: 'Continue com google',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            SignUpButton(
              assetPath: 'assets/images/logos/apple.png',
              title: 'Continue com apple',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
