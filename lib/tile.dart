import 'main.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class tile extends StatelessWidget {
  final int num;
  final List<int> position;
  const tile({
    Key? key,
    required this.position,
    required this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        moves();
        check(position);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: 100,
              height: 100,
              child: Center(child: Text(num.toString()))),
        ),
      ),
    );
  }
}
