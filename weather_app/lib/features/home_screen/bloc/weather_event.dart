part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {}

class WeatherData extends WeatherEvent {}

class FetchWeather extends WeatherEvent {}
