import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/core/shared/themes/dark_theme.dart';
import 'package:monetine/src/core/shared/themes/light_theme.dart';
import 'package:monetine/src/routes/appPages/app_page.dart';
import 'package:monetine/src/routes/home_route.dart';
import 'package:monetine/src/routes/initial_bindings.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      unknownRoute: HomeRoute.routes[0],
      getPages: AppPages.routes,
      initialBinding: InitialBindings(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: lightTheme,
      darkTheme: darkTheme,
      title: 'Monetine',
      initialRoute: Routes.monetineNavBar,
    );
  }
}
