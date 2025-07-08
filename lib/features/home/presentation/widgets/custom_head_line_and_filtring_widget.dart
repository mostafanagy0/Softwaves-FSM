import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fsm/core/utils/styles.dart';

class CustomHeadLineAndFiltringWidget extends StatelessWidget {
  const CustomHeadLineAndFiltringWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Your Tickets', style: TextStyles.poppins16SemiBold),
        Spacer(),
        Row(
          children: [
            Text('Filter', style: TextStyles.sans12SemiBold),
            SizedBox(width: 4),
            SvgPicture.asset('assets/images/filter_icon.svg'),
          ],
        ),
      ],
    );
  }
}
