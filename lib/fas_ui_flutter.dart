
import 'dart:async';

import 'package:flutter/services.dart';

class FasUiFlutter {
  static const MethodChannel _channel =
      const MethodChannel('fas_ui_flutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
