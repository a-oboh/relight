import 'package:flutter_test/flutter_test.dart';
import 'package:relight/app/relight_app.dart';
import 'package:relight/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const RelightApp());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
