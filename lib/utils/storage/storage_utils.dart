import 'package:get_storage/get_storage.dart';

class StorageUtils {
  static final _box = GetStorage();

  static String getDynamicLink() {
    return _box.read(StorageKeys.DYNAMIC_LINK);
  }

  static void setDynamicLink(String link) {
    _box.write(StorageKeys.DYNAMIC_LINK, link);
  }

  static void removeDynamicLink() {
    _box.remove(StorageKeys.DYNAMIC_LINK);
  }
}

class StorageKeys {
  static const DYNAMIC_LINK = 'DYNAMIC_LINK';
}
