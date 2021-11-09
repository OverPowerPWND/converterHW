import 'dart:core';
import 'dart:io';

void main() {
  double usd = ratesMoneyBuy.usdnow;
  double eur = ratesMoneyBuy.eurnow;
  double rub = ratesMoneyBuy.rubnow;
  double aed = ratesMoneyBuy.aednow;

  double usdSell = ratesMoneyBuy.usdnow;
  double eurSell = ratesMoneyBuy.eurnow;
  double rubSell = ratesMoneyBuy.rubnow;
  double aedSell = ratesMoneyBuy.aednow;

  double res1 = 0;

  print(
      'Money exchange rates for today: \nUSD: $usd|$usdSell \nEUR: $eur|$eurSell \nRUB: $rub|$rubSell \nAED: $aed|$aedSell \n\n');

  print(
      'You wanna exchange to SOM?=1\nYou wanna exchange SOM to another?=2\naccept');

  dynamic enter = stdin.readLineSync();

  if (enter == '1') {
    print('Choose your currency: \nUSD\nEUR\nRUB\nAED\naccept');

    dynamic currency = stdin.readLineSync();
    switch (currency) {
      case 'USD':
        print('how much Dollars u want to exchange:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som * usd;

        print('Exchange:$som USD at $res1 SOM');
        break;

      case 'EUR':
        print('how much Euros u want to exchange:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som * eur;

        print('Exchange:$som EUR at $res1 SOM');
        break;

      case 'RUB':
        print('how much Rubles u want to exchange:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som * rub;

        print('Exchange:$som RUB at $res1 SOM');
        break;

      case 'AED':
        print('how much Dirham u want to exchange:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som * aed;

        print('Exchange:$som AED at $res1 SOM');
        break;
      default:
        print('Exception error, please try again');
        break;
    }
  } else if (enter == '2') {
    print('Choose your currency:\nUSD\nEUR\nRUB\nAED');
    dynamic currency = stdin.readLineSync();
    switch (currency) {
      case 'USD':
        print('How much SOM u want to change at USD:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som / usdSell;
        String res2 = res1.toStringAsFixed(2);
        print('exchange:$som SOM at $res2 USD');
        break;

      case 'EUR':
        print('How much SOM u want to change at EUR:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som / eurSell;
        String res2 = res1.toStringAsFixed(2);
        print('exchange:$som SOM at $res2 EUR');
        break;

      case 'RUB':
        print('How much SOM u want to change at RUB:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som / rubSell;
        String res2 = res1.toStringAsFixed(2);
        print('exchange:$som SOM at $res2 RUB');
        break;

      case 'AED':
        print('How much SOM u want to change at AED:');
        dynamic som1 = stdin.readLineSync();
        dynamic som = int.parse(som1);
        res1 = som / aedSell;
        String res2 = res1.toStringAsFixed(2);
        print('exchange:$som SOM at $res2 AED');
        break;
      default:
        print('Error, please try to input NUMBER');
        break;
    }
  } else {
    print('Error, please try again');
  }
  print('\n');
}

class ratesMoneyBuy {
  static double usdnow = 84.5;
  static double eurnow = 97.3;
  static double rubnow = 1.16;
  static double aednow = 23.09;
}

class ratesMoneySell {
  static double usdnow = 84.9;
  static double eurnow = 98.78;
  static double rubnow = 1.194;
  static double aednow = 23.11;
}
