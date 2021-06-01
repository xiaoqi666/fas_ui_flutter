#import "FasUiFlutterPlugin.h"
#if __has_include(<fas_ui_flutter/fas_ui_flutter-Swift.h>)
#import <fas_ui_flutter/fas_ui_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fas_ui_flutter-Swift.h"
#endif

@implementation FasUiFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFasUiFlutterPlugin registerWithRegistrar:registrar];
}
@end
