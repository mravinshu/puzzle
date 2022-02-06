// ignore_for_file: empty_catches, duplicate_ignore

/*
    00 01 02 03
    10 11 12 13
    20 21 22 23
    30 31 32 33
*/

import 'package:puzzle/shuffle.dart';

List zero(List position) {
  int temp = 0;
  try {
    if (crntPos[position[0] - 1][position[1]] == 0) {
      temp = crntPos[position[0]][position[1]];
      crntPos[position[0]][position[1]] = crntPos[position[0] - 1][position[1]];
      crntPos[position[0] - 1][position[1]] = temp;
    }
  } catch (e) {}
  try {
    if (crntPos[position[0] + 1][position[1]] == 0) {
      temp = crntPos[position[0]][position[1]];
      crntPos[position[0]][position[1]] = crntPos[position[0] + 1][position[1]];
      crntPos[position[0] + 1][position[1]] = temp;
    }
  } catch (e) {}
  try {
    if (crntPos[position[0]][position[1] - 1] == 0) {
      temp = crntPos[position[0]][position[1]];
      crntPos[position[0]][position[1]] = crntPos[position[0]][position[1] - 1];
      crntPos[position[0]][position[1] - 1] = temp;
    }
  } catch (e) {}
  try {
    if (crntPos[position[0]][position[1] + 1] == 0) {
      temp = crntPos[position[0]][position[1]];
      crntPos[position[0]][position[1]] = crntPos[position[0]][position[1] + 1];
      crntPos[position[0]][position[1] + 1] = temp;
    }
  } catch (e) {}
  return [];
}

int kitna() {
  int shi = 0;
  for (var i = 0; i < crctPos.length; i++) {
    for (var j = 0; j < crctPos.length; j++) {
      if (crntPos[i][j] == crctPos[i][j]) {
        shi++;
      }
    }
  }
  return shi;
}
