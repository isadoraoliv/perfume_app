import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:perfume_app/app/modules/perfume_details/perfume_details_page.dart';

main() {
  testWidgets('PerfumeDetailsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(PerfumeDetailsPage(title: 'PerfumeDetails')));
    final titleFinder = find.text('PerfumeDetails');
    expect(titleFinder, findsOneWidget);
  });
}
