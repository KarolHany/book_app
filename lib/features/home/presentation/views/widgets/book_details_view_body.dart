<<<<<<< HEAD
import 'package:book_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:book_app/features/home/presentation/views/widgets/similar_books_section.dart';
=======
import 'package:book_app/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
>>>>>>> ff83f1d7a46a4683209ad10108513c4ba4c13b97
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
=======
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
           CustomAppBarBookDetails(),
        ],
      ),
>>>>>>> ff83f1d7a46a4683209ad10108513c4ba4c13b97
    );
  }
}

<<<<<<< HEAD

=======
>>>>>>> ff83f1d7a46a4683209ad10108513c4ba4c13b97
