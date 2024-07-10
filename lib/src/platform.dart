import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';

import 'permission.dart';

class InAppPermissions {
  const InAppPermissions._();

  static Future<Permission> get storage async {
    Permission permission = Permission.photos;
    if (!kIsWeb && Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt <= 32) {
        permission = Permission.storage;
      }
    }
    return permission;
  }

  static Future<bool> isStoragePermission([
    bool openSettings = true,
  ]) {
    return storage.then((permission) {
      return InAppPermission.isPermission(
        permission,
        openSettings,
      );
    });
  }
}
