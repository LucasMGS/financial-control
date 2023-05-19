import 'package:get/get_navigation/get_navigation.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/profile/profile_page.dart';

class ProfileRoute {
  ProfileRoute._();

  static final routes = <GetPage>[
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
    ),
  ];
}
