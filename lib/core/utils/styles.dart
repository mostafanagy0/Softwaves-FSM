import 'package:flutter/material.dart';
import 'package:fsm/core/utils/colors.dart';

class TextStyles {
  static TextStyle sans12Regular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGray,
    fontFamily: 'publicSans',
  );
  static TextStyle sans16SemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.dark,
    fontFamily: 'publicSans',
  );
  static TextStyle poppins12Regular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.gray,
    fontFamily: 'Poppins',
  );
  static TextStyle poppins16SemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.dark,
    fontFamily: 'Poppins',
  );
  static TextStyle sans12SemiBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
    fontFamily: 'publicSans',
  );
  static TextStyle poppins14Medium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xFF798693),
    fontFamily: 'Poppins',
  );
}
