part of 'permission.dart';

enum InAppPermissions {
  calendar,
  camera,
  contacts,
  location,
  locationAlways,
  locationWhenInUse,
  mediaLibrary,
  microphone,
  phone,
  photos,
  photosAddOnly,
  reminders,
  sensors,
  sms,
  speech,
  storage,
  ignoreBatteryOptimizations,
  notification,
  accessMediaLocation,
  activityRecognition,
  unknown,
  bluetooth,
  manageExternalStorage,
  systemAlertWindow,
  requestInstallPackages,
  appTrackingTransparency,
  criticalAlerts,
  accessNotificationPolicy,
  bluetoothScan,
  bluetoothAdvertise,
  bluetoothConnect,
  nearbyWifiDevices,
  videos,
  audio,
  scheduleExactAlarm,
  sensorsAlways,
  calendarWriteOnly,
  calendarFullAccess,
  assistant,
  backgroundRefresh;

  static Permission of(InAppPermissions permission) {
    switch (permission) {
      case InAppPermissions.camera:
        return Permission.camera;
      case InAppPermissions.contacts:
        return Permission.contacts;
      case InAppPermissions.location:
        return Permission.location;
      case InAppPermissions.locationAlways:
        return Permission.locationAlways;
      case InAppPermissions.locationWhenInUse:
        return Permission.locationWhenInUse;
      case InAppPermissions.mediaLibrary:
        return Permission.mediaLibrary;
      case InAppPermissions.microphone:
        return Permission.microphone;
      case InAppPermissions.phone:
        return Permission.phone;
      case InAppPermissions.photos:
        return Permission.photos;
      case InAppPermissions.photosAddOnly:
        return Permission.photosAddOnly;
      case InAppPermissions.reminders:
        return Permission.reminders;
      case InAppPermissions.sensors:
        return Permission.sensors;
      case InAppPermissions.sms:
        return Permission.sms;
      case InAppPermissions.speech:
        return Permission.speech;
      case InAppPermissions.storage:
        return Permission.storage;
      case InAppPermissions.ignoreBatteryOptimizations:
        return Permission.ignoreBatteryOptimizations;
      case InAppPermissions.notification:
        return Permission.notification;
      case InAppPermissions.accessMediaLocation:
        return Permission.accessMediaLocation;
      case InAppPermissions.activityRecognition:
        return Permission.activityRecognition;
      case InAppPermissions.unknown:
        return Permission.unknown;
      case InAppPermissions.bluetooth:
        return Permission.bluetooth;
      case InAppPermissions.manageExternalStorage:
        return Permission.manageExternalStorage;
      case InAppPermissions.systemAlertWindow:
        return Permission.systemAlertWindow;
      case InAppPermissions.requestInstallPackages:
        return Permission.requestInstallPackages;
      case InAppPermissions.appTrackingTransparency:
        return Permission.appTrackingTransparency;
      case InAppPermissions.criticalAlerts:
        return Permission.criticalAlerts;
      case InAppPermissions.accessNotificationPolicy:
        return Permission.accessNotificationPolicy;
      case InAppPermissions.bluetoothScan:
        return Permission.bluetoothScan;
      case InAppPermissions.bluetoothAdvertise:
        return Permission.bluetoothAdvertise;
      case InAppPermissions.bluetoothConnect:
        return Permission.bluetoothConnect;
      case InAppPermissions.nearbyWifiDevices:
        return Permission.nearbyWifiDevices;
      case InAppPermissions.videos:
        return Permission.videos;
      case InAppPermissions.audio:
        return Permission.audio;
      case InAppPermissions.scheduleExactAlarm:
        return Permission.scheduleExactAlarm;
      case InAppPermissions.sensorsAlways:
        return Permission.sensorsAlways;
      case InAppPermissions.calendarWriteOnly:
        return Permission.calendarWriteOnly;
      case InAppPermissions.calendar:
      case InAppPermissions.calendarFullAccess:
        return Permission.calendarFullAccess;
      case InAppPermissions.assistant:
        return Permission.assistant;
      case InAppPermissions.backgroundRefresh:
        return Permission.backgroundRefresh;
    }
  }
}
