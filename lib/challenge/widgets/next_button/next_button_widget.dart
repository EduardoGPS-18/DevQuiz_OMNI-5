import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final VoidCallback onTap;
  final Color borderColor;

  const NextButtonWidget({
    Key? key,
    required this.backgroundColor,
    required this.label,
    required this.fontColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({required String label, required this.onTap})
      : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.green,
        this.label = label;
  NextButtonWidget.white({required this.label, required this.onTap})
      : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.grey;
  NextButtonWidget.purple({required this.label, required this.onTap})
      : this.backgroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.purple;
  NextButtonWidget.transparent({required this.label, required this.onTap})
      : this.backgroundColor = Colors.transparent,
        this.fontColor = AppColors.grey,
        this.borderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(this.backgroundColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            side: MaterialStateProperty.all(BorderSide(color: borderColor))),
        onPressed: this.onTap,
        child: Text(
          this.label,
          style: GoogleFonts.notoSans(
            color: fontColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
