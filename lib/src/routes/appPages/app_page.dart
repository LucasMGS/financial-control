import 'package:monetine/src/routes/bank_account_route.dart';
import 'package:monetine/src/routes/create_transaction_route.dart';
import 'package:monetine/src/routes/credit_card_route.dart';
import 'package:monetine/src/routes/goals_routes.dart';
import 'package:monetine/src/routes/home_route.dart';
import 'package:monetine/src/routes/login_route.dart';
import 'package:monetine/src/routes/monetine_navbar_route.dart';
import 'package:monetine/src/routes/profile_route.dart';
import 'package:monetine/src/routes/sign_up_route.dart';

class AppPages {
  static final routes = [
    ...HomeRoute.routes,
    ...CreditCardRoute.route,
    ...MonetineNavBarRoute.routes,
    ...ProfileRoute.routes,
    ...BankAccountRoute.route,
    ...GoalsRoute.routes,
    ...CreateTransactionRoute.route,
    ...LoginRoute.routes,
    ...SignUpRoute.routes,
  ];
}
