import 'package:intl/intl.dart';

extension TraZeroRemoval on double {
  String get toMoney => '$removeTrailingZeros₺';
  String get removeTrailingZeros {
    // return if complies to int
    if (this % 1 == 0) return toInt().toString();
    // remove trailing zeroes
    String str = '$this'.replaceAll(RegExp(r'0*$'), '');
    // reduce fraction max length to 2
    if (str.contains('.')) {
      final fr = str.split('.');
      if (2 < fr[1].length) {
        str = '${fr[0]}.${fr[1][0]}${fr[1][1]}';
      }
    }
    return str;
  }
}

extension ReadableId on double {
  String readabledouble() {
    if (this == 0.0) {
      return '0';
    }
    final result = NumberFormat.compactCurrency(
      locale: 'id',
      symbol: '',
      // decimalDigits: 2,
    ).format(this);
    return result;
  }
}

extension CurrencyId on double {
  String currencyIdFormat() {
    if (this == 0.0) {
      return 'Rp 0';
    }
    final result = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      // decimalDigits: 2,
    ).format(this);
    return result;
  }
}
