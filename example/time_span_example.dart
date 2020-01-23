import 'package:time_span/time_span.dart';

void main() {
  var timeSpan = TimeSpan('09:00', '21:00');
  print('Time span in hours: ${timeSpan.inHours}'); // 12
  print('Time span in inMinutes: ${timeSpan.inMinutes}'); // 720
}
