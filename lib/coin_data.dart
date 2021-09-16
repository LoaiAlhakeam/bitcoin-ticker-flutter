import 'package:http/http.dart' as http;
import 'dart:convert';

const key = '03E3199D-8282-46E8-A7DF-7C1AA8019E59';

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

class CoinData {
  Future<int> getBTCData(String currency) async {
    int rate = 0;
    String apiURL =
        'https://rest.coinapi.io/v1/exchangerate/BTC/$currency?apikey=$key';
    Uri uri = Uri.parse(apiURL);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      rate = data['rate'].toInt();
      print(rate);
      return rate;
    } else {
      print(response.statusCode);
      return rate;
    }
  }

  Future<int> getETHData(String currency) async {
    int rate = 0;
    String apiURL =
        'https://rest.coinapi.io/v1/exchangerate/ETH/$currency?apikey=$key';
    Uri uri = Uri.parse(apiURL);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      rate = data['rate'].toInt();
      print(rate);
      return rate;
    } else {
      print(response.statusCode);
      return rate;
    }
  }

  Future<int> getLTCData(String currency) async {
    int rate = 0;
    String apiURL =
        'https://rest.coinapi.io/v1/exchangerate/LTC/$currency?apikey=$key';
    Uri uri = Uri.parse(apiURL);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      rate = data['rate'].toInt();
      return rate;
    } else {
      print(response.statusCode);
      return rate;
    }
  }
}
