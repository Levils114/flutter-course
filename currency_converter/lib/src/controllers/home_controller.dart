import 'package:currency_converter/src/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController fromText;
  final TextEditingController toText;

  CurrencyModel fromCurrency;
  CurrencyModel toCurrency;

  HomeController(this.fromText, this.toText) {
    currencies = CurrencyModel.getCurrency();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = fromText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;

    if (toCurrency.name == 'Real') {
      returnValue = fromCurrency.real * value;
    } else if (toCurrency.name == 'Dolar') {
      returnValue = fromCurrency.dolar * value;
    } else if (toCurrency.name == 'Euro') {
      returnValue = fromCurrency.euro * value;
    } else if (toCurrency.name == 'Bitcoin') {
      returnValue = fromCurrency.bitcon * value;
    }

    toText.text = returnValue.toStringAsFixed(2);
  }
}
