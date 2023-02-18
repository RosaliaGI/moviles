import 'dart:convert';
import 'package:flutter/material.dart';
import 'data/constants.dart';

class ExchangesRates extends StatelessWidget {
  var exchangesRates = jsonDecode(CRYPTO_EXCHANGE_RATES)['rates'];
  var keys = jsonDecode(CRYPTO_EXCHANGE_RATES)['rates'].keys.toList();
  ExchangesRates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRYPTO_EXCHANGES'),
      ),
      body: Center(
        child: ListView.separated(
          itemCount: exchangesRates.length,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('${exchangesRates[keys[index]]['name']}'),
              subtitle: Text('Valor: ${exchangesRates[keys[index]]['value']}'),
              trailing: CircleAvatar(
                child: Text('${exchangesRates[keys[index]]['unit']}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
