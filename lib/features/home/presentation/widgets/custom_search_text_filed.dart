import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fsm/core/utils/styles.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x00a00000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 20,
            child: Center(
              child: SvgPicture.asset('assets/images/MagnifyingGlass.svg'),
            ),
          ),

          hintStyle: TextStyles.poppins12Regular,
          hintText: 'Find your task here..',
          filled: true,
          fillColor: Color(0xFFF8F8F8),
          border: buildBorder(),
          focusedBorder: buildBorder(),
          enabledBorder: buildBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: const BorderSide(width: 1, color: Color(0xFFF8F8F8)),
  );
}
