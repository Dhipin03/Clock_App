import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeContainer extends ConsumerWidget {
  TimeContainer({
    super.key,
    required this.size,
    required this.time,
    this.isneeded = false,
    this.merdiem,
  });
  final Size size;
  final String time;

  bool isneeded;
  String? merdiem;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade900, borderRadius: BorderRadius.circular(20)),
      height: size.height * 0.4,
      width: size.width * 0.4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                time,
                style: GoogleFonts.anton(
                    fontWeight: FontWeight.bold,
                    fontSize: 85,
                    color: Colors.white),
              ),
            ),
            isneeded == true
                ? Text(
                    merdiem.toString(),
                    style: GoogleFonts.anton(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey.shade600),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
