import 'package:get/instance_manager.dart';
import 'package:monetine/src/modules/home/controllers/home_controller.dart';
import 'package:monetine/src/modules/home/controllers/monetine_bottom_navbar_controller.dart';
import 'package:monetine/src/modules/profile/profile_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(), permanent: true);
    Get.put(MonetineBottomNavBarController(), permanent: true);
    Get.lazyPut(() => ProfileController());
  }
}
