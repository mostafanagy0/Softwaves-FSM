import 'package:flutter/material.dart';
import 'package:fsm/features/home/presentation/widgets/ticket_widgets/custom_ticket_item.dart';

class TicketsListView extends StatelessWidget {
  const TicketsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8),
            child: const CustomTicketItem(),
          );
        },
      ),
    );
  }
}
