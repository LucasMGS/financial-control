import 'package:monetine/src/routes/creditCard/credit_card_route.dart';
import 'package:monetine/src/routes/home/home_route.dart';
import 'package:monetine/src/routes/monetineNavBar/monetine_navbar_route.dart';
import 'package:monetine/src/routes/profile/profile_route.dart';

class AppPages {
  static final routes = [
    ...HomeRoute.routes,
    ...CreditCardRoute.route,
    ...MonetineNavBarRoute.routes,
    ...ProfileRoute.routes
  ];
}
