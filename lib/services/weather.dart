import 'package:clima/services/networking.dart';
import 'package:clima/model/weather_response_model.dart';
import '../services/location.dart';

const apiKey = '6a8ab57428fda4f04998a09f52f04d13';
const openWeatherMapUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<WeatherResponseModel> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapUrl?q=$cityName&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();

    return WeatherResponseModel.fromJson(weatherData);
  }

  Future<WeatherResponseModel> getLocationWeather() async {
    Location myLocation = Location();
    await myLocation.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapUrl?lat=${myLocation.getLatitude()}&lon=${myLocation.getLongitude()}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();

    return WeatherResponseModel.fromJson(weatherData);
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
