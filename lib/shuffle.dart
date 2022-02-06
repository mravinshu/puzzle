/*
    00   01   02   03

    10   11   12   13

    20   21   22   23

    30   31   32   33
*/

import 'package:puzzle/check.dart';
import 'package:puzzle/main.dart';

List<List<int>> crctPos = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 0],
];

List<int> shuffled = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0];

List<List<int>> crntPos = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 0],
];

void shuffle() {
  move = 0;
  shuffled.shuffle();
  int num = 0;
  for (var i = 0; i < crntPos.length; i++) {
    for (var j = 0; j < crntPos.length; j++) {
      crntPos[i][j] = shuffled[num];
      num++;
    }
  }
}
