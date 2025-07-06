import 'package:book_app/core/widgets/custom_text_buttom.dart';
import 'package:flutter/material.dart';

class BooksButtonAction extends StatelessWidget {
  const BooksButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextButtom(
              onPressed: () {},
              backgroundColor: Colors.white,
              text: '15.99',
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
              child: CustomTextButtom(
            onPressed: () {},
            backgroundColor: const Color(0xffEF8262),
            text: 'Free Preview',
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
                fontSize: 16,
          ))
        ],
      ),
    );
  }
}
