import 'package:flutter/material.dart';
import 'package:fsm/features/home/presentation/widgets/components_widget.dart';
import 'package:fsm/features/home/presentation/widgets/custom_head_line_and_filtring_widget.dart';
import 'package:fsm/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fsm/features/home/presentation/widgets/custom_search_text_filed.dart';
import 'package:fsm/features/home/presentation/widgets/ticket_widgets/tickets_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomHomeAppBar(),
            SizedBox(height: 8),
            CustomSearchTextFiled(),
            SizedBox(height: 12),
            CustomHeadLineAndFiltringWidget(),
            SizedBox(height: 8),
            ComponentsWidget(numbers: [2, 3, 5]),
            SizedBox(height: 24),
            TicketsListView(),
          ],
        ),
      ),
    );
  }
}
