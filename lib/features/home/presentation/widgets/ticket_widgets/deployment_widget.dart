import 'package:flutter/material.dart';
import 'package:fsm/core/utils/styles.dart';

class DeploymentWidget extends StatelessWidget {
  const DeploymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFFEDEFF1), width: 1),
      ),
      child: Row(
        children: [
          Text(
            'Deployment',
            style: TextStyles.sans16SemiBold.copyWith(
              color: const Color(0xFF697682),
              fontSize: 14,
            ),
          ),
          const Spacer(),
          Text(
            'Deployment',
            style: TextStyles.poppins12Regular.copyWith(
              color: const Color(0xFF798693),
            ),
          ),
        ],
      ),
    );
  }
}
