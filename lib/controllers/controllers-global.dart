import 'package:mobx/mobx.dart';

part 'controllers-global.g.dart';

class ControllerGlobal = _GControllersBase with _$ControllerGlobal;

abstract class _GControllersBase with Store {
  @observable
  int value = 0;

  @action
  increment() {
    value++;
  }
}
