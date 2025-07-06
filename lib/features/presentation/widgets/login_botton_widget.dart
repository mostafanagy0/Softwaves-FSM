import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

class LoginBottonWidget extends StatelessWidget {
  const LoginBottonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/microsoft-svgrepo-com.svg'),
            Text(
              'Login With Microsoft',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
