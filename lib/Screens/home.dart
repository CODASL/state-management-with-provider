import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _currentNo++;
          });
          debugPrint(_currentNo.toString());
        },
        child: const Icon(Icons.add),
      ),

      //appbar
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Increment app with setstate"),
      ),

      //body
      body: Center(
        child: Text(
          _currentNo.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
      ),
    );
  }
}
