import 'package:get/get_navigation/get_navigation.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/pages/Home/views/home_page.dart';
import 'package:monetine/src/pages/home/bindings.dart/home_binding.dart';

class HomeRoute {
  HomeRoute._();

  static final routes = <GetPage>[
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBinding()),
  ];
}
