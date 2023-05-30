import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/creditCard/credit_card_binding.dart';
import 'package:monetine/src/modules/creditCard/credit_card_page.dart';
import 'package:monetine/src/modules/creditCard/subModules/createCreditCard/create_credit_card_binding.dart';
import 'package:monetine/src/modules/creditCard/subModules/createCreditCard/create_credit_card_page.dart';

class CreditCardRoute {
  CreditCardRoute._();

  static final route = [
    GetPage(
        name: Routes.creditCard,
        page: () => const CreditCardPage(),
        binding: CreditCardBinding(),
        children: [
          GetPage(
            name: Routes.create,
            page: () => const CreateCreditCardPage(),
            binding: CreateCreditCardBinding(),
          ),
        ]),
  ];
}
