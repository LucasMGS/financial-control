import 'package:intl/intl.dart';

String toCurrencyFormat(double number) {
  final numberFormat = NumberFormat.currency(
    locale: 'pt',
    name: 'BR',
    symbol: 'R\$',
    decimalDigits: 2,
  );
  return numberFormat.format(number);
}
