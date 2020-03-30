import 'package:mobx/mobx.dart';

part 'perfume_details_controller.g.dart';

class PerfumeDetailsController = _PerfumeDetailsControllerBase
    with _$PerfumeDetailsController;

abstract class _PerfumeDetailsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
