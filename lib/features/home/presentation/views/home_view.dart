import 'package:flutter/material.dart';
import 'package:fsm/features/home/presentation/widgets/components_widget.dart';
import 'package:fsm/features/home/presentation/widgets/custom_head_line_and_filtring_widget.dart';
import 'package:fsm/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fsm/features/home/presentation/widgets/custom_search_text_filed.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHomeAppBar(),

              SizedBox(height: 8),
              CustomSearchTextFiled(),
              SizedBox(height: 12),
              CustomHeadLineAndFiltringWidget(),
              SizedBox(height: 8),
              ComponentsWidget(numbers: [2, 3, 5]),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
class CustomTicketItem extends StatelessWidget {
  const CustomTicketItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(decoration: BoxDecoration( 
color: Color(0xff)


    ),);
  }
}