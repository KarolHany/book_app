import 'package:flutter/material.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.close , size: 30,)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined , size: 30,))
      ],
    );
  }
}