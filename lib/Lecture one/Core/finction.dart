import 'package:flutter/material.dart';

import 'constant.dart';

Alignment getNextAlignment(int align) {
  switch (align) {
    case 1:
      return Alignment.topCenter;
    case 2:
      return Alignment.topRight;
    case 3:
      return Alignment.centerLeft;
    case 4:
      return Alignment.center;
    case 5:
      return Alignment.centerRight;
    case 6:
      return Alignment.bottomLeft;
    case 7:
      return Alignment.bottomCenter;
    case 8:
      return Alignment.bottomRight;
    default:
      jerryAliignment = 0;
      return Alignment.topLeft;
  }
}
