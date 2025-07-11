import 'package:flutter/material.dart';
import 'package:fsm/core/utils/colors.dart';
import 'package:fsm/core/utils/styles.dart';
import 'package:fsm/features/home/presentation/widgets/ticket_widgets/deployment_widget.dart';
import 'package:fsm/features/home/presentation/widgets/ticket_widgets/location_widget.dart';
import 'package:fsm/features/home/presentation/widgets/ticket_widgets/ticket_number_and_date_widget.dart';

class CustomTicketItem extends StatelessWidget {
  const CustomTicketItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              'Carrefour [#212]',
              style: TextStyles.sans12SemiBold.copyWith(
                color: AppColors.primaryColor,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFEDEFF1), width: 1),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x02000000),
                  blurRadius: 6,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TicketNumberAndDate(),
                const SizedBox(height: 8),

                DeploymentWidget(),
                const SizedBox(height: 8),

                LocationWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
