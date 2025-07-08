import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fsm/core/utils/styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Color(0xFFEDEFF1), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SvgPicture.asset('assets/images/Bell.svg'),
        ),
      ),
      leading: Image.asset('assets/images/Avatar.png'),
      title: Text('Hello!', style: TextStyles.sans12Regular),
      subtitle: Text(
        'Abdullah',
        // getUser().name,
        style: TextStyles.sans16SemiBold,
      ),
    );
  }
}
