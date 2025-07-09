import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/search/presentation/views/widgets/book_result_list_view.dart';
import 'package:book_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingH),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Search Results',
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: paddingH,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BooksSearchResultListView(),
          )
        ],
      ),
    );
  }
}
