import 'package:flutter/material.dart';
import 'package:fsm/features/home/presentation/widgets/ticket_widgets/custom_ticket_item.dart';

class TicketsListView extends StatelessWidget {
  const TicketsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true, // علشان ياخد الطول على قد العناصر
      physics: const NeverScrollableScrollPhysics(), // علشان يمنع الاسكرول
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 8),
          child: CustomTicketItem(),
        );
      },
    );
  }
}
