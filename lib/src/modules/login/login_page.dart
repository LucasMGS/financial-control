import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/route_manager.dart';
import 'package:local_auth/local_auth.dart';
import 'package:monetine/src/core/constants/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: context.theme.colorScheme.primary,
          ),
          Positioned(
            bottom: 170,
            left: context.width * .2,
            right: context.width * .2,
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                child: Text(
                  'Crie uma conta',
                  style: context.textTheme.titleMedium!
                      .copyWith(color: context.theme.colorScheme.primary),
                ),
                onPressed: () {
                  Get.toNamed(Routes.signUp);
                },
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: context.width * .2,
            right: context.width * .2,
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                child: Text(
                  'Eu tenho uma conta',
                  style: context.textTheme.titleMedium!.copyWith(
                    color: context.theme.colorScheme.primary,
                  ),
                ),
                onPressed: () async {
                  final LocalAuthentication auth = LocalAuthentication();
                  // final bool canAuthenticateWithBiometrics =
                  //     await auth.canCheckBiometrics;
                  // final bool canAuthenticate = canAuthenticateWithBiometrics ||
                  //     await auth.isDeviceSupported();
                  // if (canAuthenticate) {
                  //   try {
                  //     final bool didAuthenticate = await auth.authenticate(
                  //       localizedReason: 'Autentique para mostrar sua conta!',
                  //     );
                  //     if (didAuthenticate) {
                  //       Get.toNamed(Routes.monetineNavBar);
                  //     } else {
                  //       print('falha ao autenticar');
                  //     }
                  //     // ···
                  //   } on PlatformException catch (e) {
                  //     debugPrint(e.toString());
                  //     // ...
                  //   }
                  // }
                  Get.toNamed(Routes.monetineNavBar);
                },
              ),
            ),
          ),
          // Positioned(
          //   bottom: 60,
          //   left: context.width * .2,
          //   right: context.width * .2,
          //   child: Text.rich(
          //     TextSpan(
          //         text: 'Não tem uma conta? ',
          //         style: context.textTheme.titleMedium,
          //         children: [
          //           TextSpan(
          //             text: 'Cadastre-se',
          //             style: context.textTheme.titleMedium!.copyWith(
          //               color: context.theme.colorScheme.onPrimary,
          //             ),
          //           )
          //         ]),
          //   ),
          // ),
          // Positioned(
          //   bottom: 35,
          //   left: context.width * .3,
          //   right: context.width * .2,
          //   child: Text(
          //     'Esqueceu sua senha?',
          //     style: context.textTheme.titleMedium!.copyWith(
          //       color: context.theme.colorScheme.onPrimary,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
