import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:monetine/src/modules/home/controllers/monetine_bottom_navbar_controller.dart';

class MonetineBottomNavBar extends GetView<MonetineBottomNavBarController> {
  const MonetineBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        onTap: controller.setCurrentIndex,
        currentIndex: controller.currentIndex.value,
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 15,
        showSelectedLabels: false,
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Criar conta',
          ),
        ],
      );
    });
  }
}
