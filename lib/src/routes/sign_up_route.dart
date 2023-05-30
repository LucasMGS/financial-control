import 'package:get/get_navigation/get_navigation.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/signUp/sign_up_page.dart';

class SignUpRoute {
  SignUpRoute._();

  static final routes = <GetPage>[
    GetPage(
      name: Routes.signUp,
      page: () => const SignUpPage(),
    ),
  ];
}
