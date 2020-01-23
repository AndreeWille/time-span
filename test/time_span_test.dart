import 'package:time_span/time_span.dart';
import 'package:test/test.dart';

void main() {
  group('TimeSpan end time is on the next day', () {
    test('.inMinutes is 1440 minutes when start time 0:00 and end time 0:00 of the next day', () {
      var span = TimeSpan('00:00', '00:00');
      expect(span.inMinutes, equals(span.minutesPerDay));
    }, skip: 'not implemented yet');
    test('.inHours is 24 hours when start time 0:00 and end time 0:00 of the next day', () {
      var span = TimeSpan('00:00', '00:00');
      expect(span.inHours, equals(24));
    }, skip: 'not implemented yet');
    test('.inHours is 391 hours', () {
      var span = TimeSpan('17:30', '00:01');
      expect(span.inMinutes, equals(391));
    });
    test('.inMinutes is 6.52 minutes', () {
      var span = TimeSpan('17:30', '00:01');
      expect(span.inHours, equals(6.52));
    }); 
    test('.inMinutes is 1439 minutes', () {
      var span = TimeSpan('00:02', '00:01');
      expect(span.inMinutes, equals(span.minutesPerDay - 1));
    });
    test('.inHours is 23.98 hours', () {
      var span = TimeSpan('00:02', '00:01');
      expect(span.inHours, equals(23.98));
    });
  });
  group('TimeSpan end time is on the same day', () {
    test('.inMinutes is 0 when start time equals end time', () {
      var span = TimeSpan('11:00', '11:00');
      expect(span.inMinutes, equals(0));
    });
    test('.inHours is 0 when start time equals end time', () {
      var span = TimeSpan('11:00', '11:00');
      expect(span.inHours, equals(0));
    });
    test('.inMinutes is 1439 minutes when start time 0:00 and end time 23.59 on the same day', () {
      var span = TimeSpan('00:00', '23:59');
      expect(span.inMinutes, equals(span.minutesPerDay - 1));
    });
    test('.inHOurs is 23.98 hours when start time 0:00 and end time 23.59 on the same day', () {
      var span = TimeSpan('00:00', '23:59');
      expect(span.inHours, equals(23.98));
    });
    test('.inMinutes is 60 when end time is 1 hour later than start time', () {
      var span = TimeSpan('11:00', '12:00');
      expect(span.inMinutes, equals(60));
    });
    test('.inHours is 1 when end time is 1 hour later than start time', () {
      var span = TimeSpan('11:00', '12:00');
      expect(span.inHours, equals(1));
    }); 
    test('.inHours is 0.5 when end time is half an hour later than start time', () {
      var span = TimeSpan('11:00', '11:30');
      expect(span.inHours, equals(0.5));
    });
    test('.inMinutes is 30 when end time is half an hour later than start time', () {
      var span = TimeSpan('11:00', '11:30');
      expect(span.inMinutes, equals(30));
    });
    test('.inMinutes is 1 when end time is 1 minute later than start time', () {
      var span = TimeSpan('11:01', '11:02');
      expect(span.inMinutes, equals(1));
    });
    test('.inHours is 0.02 when end time is 1 minute later than start time', () {
      var span = TimeSpan('11:01', '11:02');
      expect(span.inHours, equals(0.02));
    });
  });
}
