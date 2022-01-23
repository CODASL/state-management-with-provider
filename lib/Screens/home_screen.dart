import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_change/Provider/incrementmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final inc = Provider.of<IncrementModel>(context, listen: true);

    return Consumer<IncrementModel>(
      builder: (context, inc, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              inc.onChange();
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Increment app with provider"),
          ),
          body: Center(
            child: Text(
              inc.currentNo.toString(),
              style: const TextStyle(fontSize: 45),
            ),
          ),
        );
      },
    );
  }
}


//1 :  setup provider
//2 : create model class
//3 : create changenotifierprovider
//4 : implement inside your app using consumer or provider object