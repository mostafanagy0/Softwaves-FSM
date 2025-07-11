import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fsm/core/utils/styles.dart' show TextStyles;

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Maadi',
          style: TextStyles.poppins14Medium.copyWith(
            color: const Color(0xFF798693),
            fontSize: 14,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              Text(
                'Navigate to google map',
                style: TextStyles.poppins12Regular.copyWith(
                  color: const Color(0xFF66B3FB),
                ),
              ),
              const SizedBox(width: 4),
              SvgPicture.asset('assets/images/maps.svg'),
            ],
          ),
        ),
      ],
    );
  }
}
