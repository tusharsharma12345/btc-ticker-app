//TODO: Add your imports here.
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

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

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '3E9CEFD5-F776-470B-AC58-74ED20BFF3D3';

class CoinData {
  //TODO: Create your getCoinData() method here.
  CoinData(this.curr);
  final String curr;
  Future getCoinData()async{
    final String url = '$coinAPIURL/BTC/$curr?apikey=$apiKey';
    var response = await http.get(Uri.parse(url));
    print(response.statusCode);
    if(response.statusCode==200){
      print(response.body);
      String data = response.body;
      var decodedData = jsonDecode(data);

      return decodedData;
    }
    else{
      print(response.statusCode);

    }

  }
  Future getETH()async{
    final String urla = '$coinAPIURL/ETH/$curr?apikey=$apiKey';
    var responsea = await http.get(Uri.parse(urla));
    print(responsea.statusCode);
    if(responsea.statusCode==200){
      print(responsea.body);
      String data = responsea.body;
      var decodedData = jsonDecode(data);

      return decodedData;
    }
    else{
      print(responsea.statusCode);

    }

  }

Future getLTC()async{
  final String urla = '$coinAPIURL/LTC/$curr?apikey=$apiKey';
  var responsea = await http.get(Uri.parse(urla));
  print(responsea.statusCode);
  if(responsea.statusCode==200){
    print(responsea.body);
    String data = responsea.body;
    var decodedData = jsonDecode(data);

    return decodedData;
  }
  else{
    print(responsea.statusCode);

  }

}

}