class ClockScreenState {
  String time;
  String meridiem;
  String minute;
  ClockScreenState(
      {required this.time, required this.meridiem, required this.minute});

  ClockScreenState copyWith(
      {String? newtime, String? newmeridiem, String? newminute}) {
    return ClockScreenState(
        time: newtime ?? time,
        meridiem: newmeridiem ?? meridiem,
        minute: newminute ?? minute);
  }
}
