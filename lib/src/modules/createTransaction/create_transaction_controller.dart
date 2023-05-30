import 'package:get/get.dart';

class CreateTransactionController extends GetxController {
  final cards = <String>[
    'Nubank',
    'Inter',
    'BTG',
  ];

  final categories = <String>[
    'Mercado',
    'Estudos',
    'Investimento',
  ];

  late RxString selectedCard;
  late RxString selectedCategory;
  @override
  void onInit() {
    super.onInit();
    selectedCard = cards[0].obs;
    selectedCategory = categories[0].obs;
  }

  void setSelectedCard(String value) {
    selectedCard.value = value;
  }

  void setSelectedCategory(String value) {
    selectedCard.value = value;
  }
}
