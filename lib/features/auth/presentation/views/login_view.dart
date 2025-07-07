import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fsm/core/helpers/extention.dart';
import 'package:fsm/core/routing/routes.dart';
import 'package:fsm/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:fsm/features/auth/presentation/cubit/cubit/auth_state.dart';
import 'package:fsm/features/auth/presentation/widgets/login_botton_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }

          if (state is AuthSuccess) {
            context.pushReplacementNamed(Routes.homeView);
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text("Login Successful!")));
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Center(child: Image.asset('assets/images/logo.png')),
              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
              if (state is AuthLoading)
                const CircularProgressIndicator()
              else
                const LoginBottonWidget(),
            ],
          );
        },
      ),
    );
  }
}
