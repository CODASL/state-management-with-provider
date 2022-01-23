import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_change/Screens/radio_buttons.dart';

import 'Provider/providers.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CustomRadioButtons(),
      ),
    );
  }
}
