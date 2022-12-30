import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_nfc_method_channel.dart';

abstract class AndroidNfcPlatform extends PlatformInterface {
  /// Constructs a AndroidNfcPlatform.
  AndroidNfcPlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidNfcPlatform _instance = MethodChannelAndroidNfc();

  /// The default instance of [AndroidNfcPlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidNfc].
  static AndroidNfcPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidNfcPlatform] when
  /// they register themselves.
  static set instance(AndroidNfcPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
