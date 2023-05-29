import 'package:get/get.dart';

class CreditCardController extends GetxController {
  final monthConvertToString = {
    1: 'Janeiro',
    2: 'Fevereiro',
    3: 'Março',
    4: 'Abril',
    5: 'Maio',
    6: 'Junho',
    7: 'Julho',
    8: 'Agosto',
    9: 'Setembro',
    10: 'Outubro',
    11: 'Novembro',
    12: 'Dezembro'
  };
  final months = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Novembro',
    'Dezembro'
  ];

  late RxString selectedMonth;

  @override
  void onInit() {
    super.onInit();
    selectedMonth = monthConvertToString[DateTime.now().month]!.obs;
  }
}
