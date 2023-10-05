import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';

class AddNewSourceItem extends StatelessWidget {
  const AddNewSourceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(RelightRouter.createHighlightSource);
      },
      child: Row(
        children: [
          Container(
            height: 80,
            width: 70,
            decoration: const BoxDecoration(
              color: AppColors.lightGrey,
            ),
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 12),
          const Text('Add a new source'),
          const Spacer(),
          const Icon(
            Icons.chevron_right_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
