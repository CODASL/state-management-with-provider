import 'package:flutter/cupertino.dart';

class IncrementModel extends ChangeNotifier {
  int currentNo = 0;

  onChange() {
    currentNo++;
    notifyListeners();
  }
}
