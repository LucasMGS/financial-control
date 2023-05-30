import 'package:get/get_navigation/get_navigation.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/goals/goals_page.dart';
import 'package:monetine/src/modules/goals/subModules/createGoal.dart/create_goal_binding.dart';
import 'package:monetine/src/modules/goals/subModules/createGoal.dart/create_goal_page.dart';

class GoalsRoute {
  GoalsRoute._();

  static final routes = <GetPage>[
    GetPage(name: Routes.goals, page: () => const GoalsPage(), children: [
      GetPage(
          name: Routes.create,
          page: () => const CreateGoalPage(),
          binding: CreateGoalBinding()),
    ]),
  ];
}
