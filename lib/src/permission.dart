import 'package:permission_handler/permission_handler.dart';

part 'permissions.dart';
part 'status.dart';

class InAppPermission {
  const InAppPermission._();

  static Future<InAppPermissionStatus> check(InAppPermissions permission) {
    return InAppPermissions.of(permission)
        .status
        .then(InAppPermissionStatus.from);
  }

  static Future<InAppPermissionStatus> request(InAppPermissions permission) {
    return InAppPermissions.of(permission)
        .request()
        .then(InAppPermissionStatus.from);
  }

  static Future<InAppPermissionStatus> isPermission(
    InAppPermissions permission, {
    bool checkAlsoPermanent = false,
  }) async {
    return check(permission).then((_) {
      if (_.isDenied || (checkAlsoPermanent && _.isPermanentlyDenied)) {
        return request(permission);
      } else {
        return _;
      }
    });
  }

  static Future<bool> isChecked(
    InAppPermissions permission, {
    bool checkAlsoPermanent = false,
  }) {
    return isPermission(permission).then((value) {
      return value.isGranted;
    });
  }
}
