import 'package:time_parser/time_parser.dart';

abstract class TimeSpan {
  Duration startTime;
  Duration endTime;
  
  double get span { 
    return ((endTime - startTime).inMinutes) / 60;
  }
  
  TimeSpan(String startTime, String endTime) {
    var beginning = TimeParser.parse(startTime);
    var end = TimeParser.parse(endTime);

    this.startTime = Duration(hours: beginning.hours, minutes: beginning.minutes);
    this.endTime   = Duration(hours: end.hours, minutes: end.minutes);
  }
}
