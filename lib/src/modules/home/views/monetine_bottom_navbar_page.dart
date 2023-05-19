import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:monetine/src/core/shared/widgets/monetine_bottom_navbar_widget.dart';
import 'package:monetine/src/modules/home/controllers/monetine_bottom_navbar_controller.dart';

class MonetineBottomNavBarPage extends GetView<MonetineBottomNavBarController> {
  const MonetineBottomNavBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.pages[controller.currentIndex.value],
        bottomNavigationBar: const MonetineBottomNavBar(),
      ),
    );
  }
}
