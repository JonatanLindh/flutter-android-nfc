import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_nfc_platform_interface.dart';

/// An implementation of [AndroidNfcPlatform] that uses method channels.
class MethodChannelAndroidNfc extends AndroidNfcPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('android_nfc');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
