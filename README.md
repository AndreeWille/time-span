A Dart library that parses two time strings and calculates the time span in minutes as int or hours as double.

## Usage

A simple usage example:

```dart
import 'package:time_span/time_span.dart';

void main() {
  var timeSpan = TimeSpan('09:00', '21:30');
  print('Time span in hours: ${timeSpan.inHours}'); // 12.5
  print('Time span in inMinutes: ${timeSpan.inMinutes}'); // 750
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/AndreeWille/time-span/issues
