import 'package:flutter/cupertino.dart';

class RadButtons extends ChangeNotifier {
  int? grpValue;
  bool isSwitched = false;

  onChange(val) {
    grpValue = val;
    notifyListeners();
  }

  onSwitch(bool val) {
    isSwitched = !isSwitched;
    notifyListeners();
  }
}
