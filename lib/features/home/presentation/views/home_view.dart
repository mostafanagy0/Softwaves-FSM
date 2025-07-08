import 'package:flutter/material.dart';
import 'package:fsm/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fsm/features/home/presentation/widgets/custom_search_text_filed.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHomeAppBar(),

              SizedBox(height: 8),
              CustomSearchTextFiled(),
              SizedBox(height: 12),
              Text('Your Tickets'),
            ],
          ),
        ),
      ),
    );
  }
}
