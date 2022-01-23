import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_change/Provider/radbuttons.dart';

class CustomRadioButtons extends StatelessWidget {
  const CustomRadioButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RadButtons>(
      builder: (context, rad, child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(
                value: 0,
                groupValue: rad.grpValue,
                onChanged: (val) {
                  rad.onChange(val);
                },
                title: const Text("True"),
              ),
              RadioListTile(
                value: 1,
                groupValue: rad.grpValue,
                onChanged: (val) {
                  rad.onChange(val);
                },
                title: const Text("False"),
              ),
              const SizedBox(
                height: 50,
              ),
              SwitchListTile(
                title: const Text("Tap to change"),
                  value: rad.isSwitched,
                  onChanged: (val) {
                    rad.onSwitch(val);
                  })
            ],
          ),
        );
      },
    );
  }
}
