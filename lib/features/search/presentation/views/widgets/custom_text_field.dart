import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        focusedBorder:
            buildOutlineInputBorder(color: Colors.blue, borderRadius: 18),
        enabledBorder: buildOutlineInputBorder(borderRadius: 18),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }
}

InputBorder buildOutlineInputBorder({Color? color, double? borderRadius}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
    borderRadius: BorderRadius.circular(borderRadius ?? 12),
  );
}
