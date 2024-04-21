part of 'permission.dart';

enum InAppPermissionStatus {
  /// The user denied access to the requested feature, permission needs to be
  /// asked first.
  denied,

  /// The user granted access to the requested feature.
  granted,

  /// The OS denied access to the requested feature. The user cannot change
  /// this app's status, possibly due to active restrictions such as parental
  /// controls being in place.
  ///
  /// *Only supported on iOS.*
  restricted,

  /// The user has authorized this application for limited access. So far this
  /// is only relevant for the Photo Library picker.
  ///
  /// *Only supported on iOS (iOS14+).*
  limited,

  /// Permission to the requested feature is permanently denied, the permission
  /// dialog will not be shown when requesting this permission. The user may
  /// still change the permission status in the settings.
  ///
  /// *On Android:*
  /// Android 11+ (API 30+): whether the user denied the permission for a second
  /// time.
  /// Below Android 11 (API 30): whether the user denied access to the requested
  /// feature and selected to never again show a request.
  ///
  /// *On iOS:*
  /// If the user has denied access to the requested feature.
  permanentlyDenied,

  /// The application is provisionally authorized to post non-interruptive user
  /// notifications.
  ///
  /// *Only supported on iOS (iOS12+).*
  provisional;

  bool get isDenied => this == denied;

  bool get isGranted => this == granted;

  bool get isRestricted => this == restricted;

  bool get isLimited => this == limited;

  bool get isPermanentlyDenied => this == permanentlyDenied;

  bool get isProvisional => this == provisional;

  factory InAppPermissionStatus.from(PermissionStatus status) {
    switch (status) {
      case PermissionStatus.denied:
        return InAppPermissionStatus.denied;
      case PermissionStatus.granted:
        return InAppPermissionStatus.granted;
      case PermissionStatus.restricted:
        return InAppPermissionStatus.restricted;
      case PermissionStatus.limited:
        return InAppPermissionStatus.limited;
      case PermissionStatus.permanentlyDenied:
        return InAppPermissionStatus.permanentlyDenied;
      case PermissionStatus.provisional:
        return InAppPermissionStatus.provisional;
    }
  }
}
