import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class CurrenciesManager {
  static const _key = 'currency';

  // Future<List<CurrencyEntity>> getCurrencies() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final List<String> currencies = prefs.getStringList(_key) ?? [];

  //   return currencies.map((currencyJson) {
  //     final currencyData = json.decode(currencyJson);
  //     return CurrencyEntity(
  //       name: currencyData['name'],
  //       symbol: currencyData['symbol'],
  //       code: currencyData['code'],
  //     );
  //   }).toList();
  //   //
  // }

  //save posts
  Future<void> saveCurrencies(List<dynamic> currencies) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> curreincesJson =
        currencies.map((currency) => json.encode(currency.toJson())).toList();
    await prefs.setStringList(_key, curreincesJson);
  }
}
