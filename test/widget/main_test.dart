import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MyWidget has a title and message', (widgetTester) async {
    // await widgetTester.pumpWidget(const MyApp());
    final titlefinder = find.text('Flutter Testing Home Page');
    expect(titlefinder, findsOneWidget);
  });
}
