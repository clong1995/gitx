import 'package:getx/getx.dart';
import 'package:getx/logic.dart';

import '../comp2/logic.dart';
import 'state.dart';

class Comp1Logic extends Logic<Comp1Logic> {
  final Comp1State state = Comp1State();

  void onPressed() {
    Getx.find<Comp2Logic>().now();
  }

  void now() {
    state.datetime = DateTime.now().toString();
    update();
  }

  @override
  Comp1Logic put() => putLogic(this);
}
