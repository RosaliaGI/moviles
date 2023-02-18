import 'dart:convert';
import 'package:flutter/material.dart';
import 'data/constants.dart';

class ExchangesTrending extends StatelessWidget {
  var exchangesTrending = jsonDecode(CRYPTO_TRENDING)['coins'] as List;
  ExchangesTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRYPTO_EXCHANGES'),
      ),
      body: Center(
        child: ListView.separated(
          itemCount: exchangesTrending.length,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading:
                  Image.network('${exchangesTrending[index]['item']['thumb']}'),
              title: Text('${exchangesTrending[index]['item']['name']}'),
              subtitle: Text(
                  '${exchangesTrending[index]['item']['symbol']}\n${exchangesTrending[index]['item']['price_btc']}'),
              trailing: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                    '${exchangesTrending[index]['item']['market_cap_rank']}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
