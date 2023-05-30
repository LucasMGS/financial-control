import 'package:get/get.dart';
import 'package:monetine/src/modules/createTransaction/create_transaction_controller.dart';

class CreateTransactionBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CreateTransactionController());
  }
}
