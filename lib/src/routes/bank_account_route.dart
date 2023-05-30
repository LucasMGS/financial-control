import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/bankAccounts/bank_accounts_binding.dart';
import 'package:monetine/src/modules/bankAccounts/bank_accounts_page.dart';
import 'package:monetine/src/modules/bankAccounts/subModules/createBankAccount/createBankAccount/create_bank_account_binding.dart';
import 'package:monetine/src/modules/bankAccounts/subModules/createBankAccount/createBankAccount/create_bank_accounts_page.dart';

class BankAccountRoute {
  BankAccountRoute._();

  static final route = [
    GetPage(
        name: Routes.bankAccounts,
        page: () => const BankAccountPage(),
        binding: BankAccountBinding(),
        children: [
          GetPage(
            name: Routes.create,
            page: () => const CreateBankAccountPage(),
            binding: CreateBankAccountBinding(),
          )
        ]),
  ];
}
