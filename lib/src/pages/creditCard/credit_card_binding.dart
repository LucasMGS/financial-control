import 'package:get/get.dart';
import 'package:monetine/src/pages/creditCard/credit_card_controller.dart';

class CreditCardBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CreditCardController());
  }
}
