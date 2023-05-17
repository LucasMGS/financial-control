import 'package:intl/intl.dart';

extension FormatterExtension on double {
  String get formatCurrencyPTBR {
    final currencyFormat = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: 'R\$',
    );
    return currencyFormat.format(this);
  }
}
