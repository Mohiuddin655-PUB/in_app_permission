import 'package:permission_handler/permission_handler.dart';

class InAppPermission {
  const InAppPermission._();

  static Future<PermissionStatus> check(Permission permission) {
    return permission.status;
  }

  static Future<PermissionStatus> request(Permission permission) {
    return permission.request();
  }

  static Future<PermissionStatus> checkAndRequest(
    Permission permission, [
    bool openSettings = true,
  ]) async {
    var status = await check(permission);
    if (status.isDenied) {
      status = await request(permission);
    } else if (openSettings && status.isPermanentlyDenied) {
      openAppSettings();
    }
    return status;
  }

  static Future<bool> isPermission(
    Permission permission, [
    bool openSettings = true,
  ]) {
    return checkAndRequest(permission, openSettings).then((status) {
      if (status.isGranted || status.isLimited) {
        return true;
      } else {
        return false;
      }
    });
  }
}
