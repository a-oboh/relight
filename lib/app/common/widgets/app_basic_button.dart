import 'package:flutter/material.dart';
import 'package:relight/app/common/utils/utils.dart';

class AppBasicButton extends StatelessWidget {
  const AppBasicButton({
    super.key,
    required this.title,
    required this.onTap,
    this.padding,
    this.colorValue = AppColors.purpleMain,
  });

  final String title;
  final Color colorValue;
  final VoidCallback onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith(
          (states) => const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return AppColors.lightGrey;
            }
            return colorValue;
          },
        ),
        textStyle: MaterialStateProperty.resolveWith(
          (states) => const TextStyle(color: Colors.white),
        ),
      ),
      child: Padding(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
