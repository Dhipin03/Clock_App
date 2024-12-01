import 'package:flipclock_app/controller/clock_screen_controller/clock_screen_Controller.dart';
import 'package:flipclock_app/controller/clock_screen_controller/clock_screen_state.dart';
import 'package:flipclock_app/view/clock_screen/widgets/time_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClockScreen extends ConsumerStatefulWidget {
  const ClockScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ClockScreenState();
}

class _ClockScreenState extends ConsumerState<ClockScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final clocksrceenstatestate =
        ref.watch(clockscreenstatenotifier) as ClockScreenState;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        height: double.infinity,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TimeContainer(
              merdiem: clocksrceenstatestate.meridiem,
              isneeded: true,
              size: size,
              time: clocksrceenstatestate.time,
            ),
            TimeContainer(
              size: size,
              time: clocksrceenstatestate.minute,
            ),
          ],
        ),
      ),
    );
  }
}
