import 'package:get/get_navigation/get_navigation.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/pages/home/views/monetine_bottom_navbar_page.dart';

class MonetineNavBarRoute {
  MonetineNavBarRoute._();

  static final routes = <GetPage>[
    GetPage(
      name: Routes.monetineNavBar,
      page: () => const MonetineBottomNavBarPage(),
    ),
  ];
}
