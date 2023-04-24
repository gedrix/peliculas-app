
import 'package:intl/intl.dart';
class HumanFormarts {

  static String HumanReadbleNumber (double number){

    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: ''
    ).format(number);
    return formatterNumber;
  }
}

