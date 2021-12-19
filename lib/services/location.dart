import 'package:geolocator/geolocator.dart';

class Location{

   late var lat, long;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      long = position.longitude;
    }catch(e){
      print(e);
    }
  }
}