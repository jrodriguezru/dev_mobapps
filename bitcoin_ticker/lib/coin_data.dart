import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '7C08A6F8-2F0F-45C0-801B-0E8776EA5F71';

class CoinData {
  Future<Map<String, String>> getCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      var url = Uri.https(
        'rest.coinapi.io',
        'v1/exchangerate/$crypto/$selectedCurrency',
        {
          'apikey': apiKey,
        },
      );
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        String data = response.body;
        var decodedData = jsonDecode(data);
        double lastPrice = decodedData['rate'];
        cryptoPrices['crypto'] = lastPrice.toStringAsFixed(0);
        print('Success');
      } else {
        print(response.statusCode);
        throw ('Error with the get request');
      }
    }
    return cryptoPrices;
  }
}
