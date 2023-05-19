import 'package:get/get.dart';
import 'package:monetine/src/modules/creditCard/credit_card_controller.dart';

class CreateCreditCardBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CreditCardController());
  }
}
