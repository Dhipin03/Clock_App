import 'dart:async';
import 'package:flipclock_app/controller/clock_screen_controller/clock_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ClockScreenStateNotifier extends StateNotifier<ClockScreenState> {
  ClockScreenStateNotifier()
      : super(ClockScreenState(
            time: DateFormat('hh').format(DateTime.now()),
            meridiem: DateFormat('a').format(DateTime.now()),
            minute: DateFormat('mm').format(DateTime.now()))) {
    _startTimer();
  }

  late final StreamSubscription _subscription;

  void _startTimer() {
    _subscription =
        Stream.periodic(const Duration(seconds: 1), (_) => DateTime.now())
            .listen((_) => updateTime());
  }

  void updateTime() {
    final now = DateTime.now();
    final newTime = DateFormat('hh').format(now);
    final newMinute = DateFormat('mm').format(now);
    final newMeridiem = DateFormat('a').format(now);

    state = state.copyWith(
      newtime: newTime,
      newminute: newMinute,
      newmeridiem: newMeridiem,
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

final clockscreenstatenotifier =
    StateNotifierProvider((ref) => ClockScreenStateNotifier());
