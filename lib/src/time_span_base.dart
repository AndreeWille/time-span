import 'package:time_parser/time_parser.dart';

class TimeSpan {
  late Time startTime;
  late Time endTime;
  final minutesPerHour = 60;
  final minutesPerDay = 1440;

  double get inHours =>
      double.parse((inMinutes / minutesPerHour).toStringAsFixed(2));

  int get inMinutes {
    var result = _calculateMinutes();
    return result;
  }

  TimeSpan(String startTime, String endTime) {
    this.startTime = TimeParser.parse(startTime);
    this.endTime = TimeParser.parse(endTime);
  }

  int _startTimeInMinutes() => _timeInMinutes(startTime);

  int _endTimeInMinutes() => _timeInMinutes(endTime);

  int _timeInMinutes(Time time) => (time.hours * 60) + time.minutes;

  int _calculateMinutes() {
    var result = _endTimeOnNextDay()
        ? (minutesPerDay - _startTimeInMinutes()) + _endTimeInMinutes()
        : _endTimeInMinutes() - _startTimeInMinutes();

    return result;
  }

  bool _endTimeOnNextDay() => _endTimeInMinutes() < _startTimeInMinutes();
}
