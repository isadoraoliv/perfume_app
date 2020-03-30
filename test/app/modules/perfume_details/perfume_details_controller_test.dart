import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:perfume_app/app/modules/perfume_details/perfume_details_controller.dart';
import 'package:perfume_app/app/modules/perfume_details/perfume_details_module.dart';

void main() {
  initModule(PerfumeDetailsModule());
  PerfumeDetailsController perfumedetails;

  setUp(() {
    perfumedetails = PerfumeDetailsModule.to.get<PerfumeDetailsController>();
  });

  group('PerfumeDetailsController Test', () {
    test("First Test", () {
      expect(perfumedetails, isInstanceOf<PerfumeDetailsController>());
    });

    test("Set Value", () {
      expect(perfumedetails.value, equals(0));
      perfumedetails.increment();
      expect(perfumedetails.value, equals(1));
    });
  });
}
