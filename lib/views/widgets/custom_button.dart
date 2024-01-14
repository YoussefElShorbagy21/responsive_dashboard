import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.title, this.textColor});

  final Color? backgroundColor;
  final String? title ;

  final Color? textColor ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: backgroundColor ?? const Color(0xFF4DB7F2),
        ),
        onPressed:() {},
        child: Text(
          title ?? 'Send Money',
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: textColor ?? Colors.white
          ),
        ),
      ),
    );
  }
}
