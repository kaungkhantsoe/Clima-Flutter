import 'package:geolocator/geolocator.dart';

class Location {
  double _mLatitude = 0;
  double _mLongitude = 0;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      _mLatitude = position.latitude;
      _mLongitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  double getLatitude() {
    return _mLatitude;
  }

  double getLongitude() {
    return _mLongitude;
  }
}
