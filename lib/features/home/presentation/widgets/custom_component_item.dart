import 'package:flutter/material.dart';
import 'package:fsm/core/utils/colors.dart';
import 'package:fsm/core/utils/styles.dart';

class CustomComponentItem extends StatelessWidget {
  const CustomComponentItem({
    super.key,
    required this.number,
    required this.text,
    required this.isSelected,
    this.onTap,
  });

  final String text;
  final int number;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: isSelected
                ? AppColors.primaryColor
                : const Color(0xFFCECECE),
            width: 0.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: isSelected
                  ? TextStyles.poppins14Medium.copyWith(color: Colors.white)
                  : TextStyles.poppins14Medium,
            ),
            const SizedBox(width: 6),
            Container(
              height: 24,
              width: 22,
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.primaryColor
                    : const Color(0xFFE6F2FE),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  number.toString(),
                  style: TextStyles.poppins14Medium.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
