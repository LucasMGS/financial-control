import 'package:get/get.dart';
import 'package:monetine/src/modules/goals/subModules/createGoal.dart/create_goal_controller.dart';

class CreateGoalBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CreateGoalController());
  }
}
