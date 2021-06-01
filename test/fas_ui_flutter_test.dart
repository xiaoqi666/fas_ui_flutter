import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fas_ui_flutter/fas_ui_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('fas_ui_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FasUiFlutter.platformVersion, '42');
  });
}
