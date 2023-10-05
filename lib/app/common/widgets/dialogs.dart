import 'package:flutter/material.dart';

import 'package:relight/app/common/utils/utils.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({
    super.key,
  });

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
