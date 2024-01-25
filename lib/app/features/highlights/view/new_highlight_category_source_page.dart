import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:relight/app/common/common.dart';
import 'package:relight/app/features/highlights/view/new_url_highlight.dart';

class NewHighlightCategorySource extends StatelessWidget {
  const NewHighlightCategorySource({super.key});

  static const String routePath = '/highlight/new-highlight-category-source';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Highlight Category'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: ListView(
          children: [
            const Text(
              'What kind of highlight do you want to create?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Gap(20),
            ListTile(
              leading: const Icon(
                Icons.menu_book_rounded,
                color: AppColors.purpleMain,
              ),
              title: const Text('Book Text'),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () => context.push(RelightRouter.createHighlight),
            ),
            ListTile(
              leading: const Icon(
                Icons.add_link_rounded,
                color: AppColors.purpleMain,
              ),
              title: const Text('Link'),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () => context.push(NewArticleHighlight.routePath),
            ),
          ],
        ),
      ),
    );
  }
}
