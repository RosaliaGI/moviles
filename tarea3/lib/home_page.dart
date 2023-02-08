import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool tap = false;
  final List<Map<String, String>> _listElements = [
    {
      "day": "Day 1",
      "places": "Templo de Tanah Lot",
      "imgs": "https://www.viajarabali.com/img/que-visitar-bali.jpg",
    },
    {
      "day": "Day 2",
      "places": "Bosque de los monos",
      "imgs": "https://www.viajarabali.com/img/que-ver-en-bali.jpg",
    },
    {
      "day": "Day 3",
      "places": "Nyang 'Nyang Beach",
      "imgs": "https://www.viajarabali.com/img/lugares-que-visitar-en-bali.jpg",
    },
    {
      "day": "Day 4",
      "places": "Arrozales de Tegallalang",
      "imgs": "https://www.viajarabali.com/img/bali-que-visitar.jpg",
    },
    {
      "day": "Day 5",
      "places": "Monte Batur",
      "imgs": "https://www.viajarabali.com/img/que-visitar.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://a.cdn-hotels.com/gdcs/production67/d1211/5b94da29-92bb-4be6-939e-baea1fe700bf.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _listElements.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                            day: _listElements[index]['day']!,
                            places: _listElements[index]['places']!,
                            imgs: _listElements[index]['imgs']!,
                          );
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text("Reservación en progreso"),
                            ),
                          );
                        tap = !tap;
                        setState((() {}));
                      },
                      child: Text(
                        "Start booking",
                        style: TextStyle(color: Colors.grey[200]),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
