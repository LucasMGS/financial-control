import 'package:get/get.dart';
import 'package:monetine/src/core/constants/routes.dart';
import 'package:monetine/src/modules/createTransaction/create_transaction_binding.dart';
import 'package:monetine/src/modules/createTransaction/create_transaction_page.dart';

class CreateTransactionRoute {
  CreateTransactionRoute._();

  static final route = [
    GetPage(
        name: Routes.createTransaction,
        page: () => CreateTransactionPage(transactionType: Get.arguments),
        binding: CreateTransactionBinding()),
  ];
}
