part of 'weather_bloc.dart';

@immutable
sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherFetchLoading extends WeatherState {}

final class WeatherFetchFailure extends WeatherState {}

final class WeatherFetchSuccessful extends WeatherState {
  final Weather weather;
  WeatherFetchSuccessful(this.weather);

  @override
  List<Object> get props => [weather];
}
