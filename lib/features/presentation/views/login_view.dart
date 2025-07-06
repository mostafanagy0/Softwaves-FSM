import 'package:flutter/material.dart';
import 'package:fsm/features/presentation/widgets/login_botton_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Center(child: Image.asset('assets/images/logo.png')),
          SizedBox(height: MediaQuery.of(context).size.height * 0.25),
          LoginBottonWidget(),
        ],
      ),
    );
  }
}
