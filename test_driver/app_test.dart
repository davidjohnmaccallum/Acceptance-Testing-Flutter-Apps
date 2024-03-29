// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Address Book App', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final firstContactFinder = find.byValueKey('contact-0');
    final contactNameFinder = find.byValueKey('contact-name');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('navigation works', () async {
      // First, tap the button.
      await driver.tap(firstContactFinder);

      // Then, verify the contact name is correct.
      expect(await driver.getText(contactNameFinder), "David MacCallum");
    });
  });
}