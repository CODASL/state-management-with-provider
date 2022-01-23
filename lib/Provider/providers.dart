import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:state_change/Provider/incrementmodel.dart';
import 'package:state_change/Provider/radbuttons.dart';

List<SingleChildWidget> providers = [
      ChangeNotifierProvider<IncrementModel>(
        create: (context) => IncrementModel(),
      ),
      ChangeNotifierProvider<RadButtons>(
        create: (context) => RadButtons(),
      ),
];
