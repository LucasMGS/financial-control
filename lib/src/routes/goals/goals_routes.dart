import 'package:get/get_navigation/get_navigation.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/goals/goals_page.dart';

class GoalsRoute {
  GoalsRoute._();

  static final routes = <GetPage>[
    GetPage(
      name: Routes.goals,
      page: () => const GoalsPage(),
    ),
  ];
}
