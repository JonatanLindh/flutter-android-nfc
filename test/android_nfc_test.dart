import 'package:flutter_test/flutter_test.dart';
import 'package:android_nfc/android_nfc.dart';
import 'package:android_nfc/android_nfc_platform_interface.dart';
import 'package:android_nfc/android_nfc_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAndroidNfcPlatform
    with MockPlatformInterfaceMixin
    implements AndroidNfcPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AndroidNfcPlatform initialPlatform = AndroidNfcPlatform.instance;

  test('$MethodChannelAndroidNfc is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAndroidNfc>());
  });

  test('getPlatformVersion', () async {
    AndroidNfc androidNfcPlugin = AndroidNfc();
    MockAndroidNfcPlatform fakePlatform = MockAndroidNfcPlatform();
    AndroidNfcPlatform.instance = fakePlatform;

    expect(await androidNfcPlugin.getPlatformVersion(), '42');
  });
}
