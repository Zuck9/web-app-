import 'package:flutter_test/flutter_test.dart';
import 'package:testing/classes/appstate.dart';

void main() {
  group("counter value test", () {
    test('Counter Function test', () {
      final counter = AppState();
      counter.increment();
      expect(counter.val, 1);
    });

    test("Reset counter value to 0 ", (){
      final counter = AppState();
      expect(counter.val, 0);
    });
  });
}
