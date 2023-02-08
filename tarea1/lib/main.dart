import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mc Flutter'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({super.key});

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      ),
      child: ListView(
        children: [
          ListTile(
            leading: IconButton(
              onPressed: () {},
              iconSize: 40,
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
            ),
            title: Text("Flutter McFlutter"),
            subtitle: Text("Experienced App Developer"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("123 Main Street"),
              Text("(415) 555-0198"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    color: tap1 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: const Text('Click'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      tap1 = !tap1;
                      setState((() {}));
                    },
                    icon: Icon(Icons.headphones),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    color: tap2 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: const Text('Click'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      tap2 = !tap2;
                      setState((() {}));
                    },
                    icon: Icon(Icons.phone_android),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    color: tap3 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: const Text('Click'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      tap3 = !tap3;
                      setState((() {}));
                    },
                    icon: Icon(Icons.battery_full),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    color: tap4 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: const Text('Click'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      tap4 = !tap4;
                      setState((() {}));
                    },
                    icon: Icon(Icons.star),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
