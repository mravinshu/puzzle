import 'package:flutter/material.dart';
import 'package:puzzle/check.dart';
import 'shuffle.dart';
import 'tile.dart';

int move = 0;
int shi = kitna();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The R\'s puzzle',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'The R\'s puzzle'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

void check(List position) {
  zero(position);
  shi = kitna();
}

void moves() {
  move++;
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData device = MediaQuery.of(context);
    double height = device.size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                shi = kitna();
              });
            },
            child: Text("Correct tiles = $shi"),
          ),
          for (var i = 0; i < crntPos.length; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var j = 0; j < crntPos.length; j++)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          moves();
                          check([i, j]);
                          setState(() {
                            const tile(position: [], num: 1);
                          });
                        },
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Center(
                                child: Text(crntPos[i][j].toString()),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ],
            ),
          OutlinedButton(
            onPressed: () {
              shuffle();
              setState(() {
                const tile(position: [], num: 1);
                shi = kitna();
              });
            },
            child: const Text("Shuffle"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Moves = $move"),
          ),
        ],
      ),
    );
  }
}
