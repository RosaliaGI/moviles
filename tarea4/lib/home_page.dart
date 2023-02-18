import 'package:flutter/material.dart';
import 'package:list_view_cripto/exchange_rates.dart';
import 'package:list_view_cripto/exchanges_trending.dart';
import 'package:list_view_cripto/exchanges.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto APP"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menú'),
            ),
            ListTile(
              title: const Text('EXCHANGES'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Exchanges()));
              },
            ),
            ListTile(
              title: const Text('EXCHANGES RATES'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ExchangesRates()));
              },
            ),
            ListTile(
              title: const Text('EXCHANGES TRENDING'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => ExchangesTrending()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
