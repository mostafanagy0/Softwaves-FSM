import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fsm/core/utils/styles.dart';

class TicketNumberAndDate extends StatelessWidget {
  const TicketNumberAndDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '#22443',
          style: TextStyles.poppins14Medium.copyWith(
            color: const Color(0xFF798693),
            fontSize: 12,
          ),
        ),
        const Spacer(),
        SvgPicture.asset('assets/images/Flag.svg'),
        const SizedBox(width: 4),
        Text(
          '22 May 2024',
          style: TextStyles.poppins12Regular.copyWith(
            color: const Color(0xFF798693),
          ),
        ),
      ],
    );
  }
}
