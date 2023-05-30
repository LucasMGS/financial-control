import 'package:get/get_navigation/get_navigation.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/login/login_page.dart';

class LoginRoute {
  LoginRoute._();

  static final routes = <GetPage>[
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
    )
  ];
}
