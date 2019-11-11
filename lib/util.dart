import 'dart:io';

class Util {
  bool hasMobilePlatForm() {
    try {
      return Platform.isAndroid || Platform.isIOS;
    } catch (e) {
      return false;
    }
  }
}

Util util = Util();
