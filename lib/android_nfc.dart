
import 'android_nfc_platform_interface.dart';

class AndroidNfc {
  Future<String?> getPlatformVersion() {
    return AndroidNfcPlatform.instance.getPlatformVersion();
  }
}
