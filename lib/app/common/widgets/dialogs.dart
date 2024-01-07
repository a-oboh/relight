import 'package:flutter/material.dart';

import 'package:relight/app/common/utils/utils.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({
    super.key,
  });

  static void show({required BuildContext context, bool dismissable = false}) {
    showDialog(
      context: context,
      barrierDismissible: dismissable,
      builder: (context) => const LoadingDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SimpleDialog(
      backgroundColor: AppColors.darkGrey2,
      children: [
        SizedBox(
          width: 5,
          height: 40,
          child: Center(
            child: CircularProgressIndicator(
              color: AppColors.purpleMain,
            ),
          ),
        ),
      ],
    );
  }
}
