import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../style/text_style_app.dart';

class CustomBottonDrawer extends StatelessWidget {
  const CustomBottonDrawer(
      {super.key, required this.onTap, required this.text});
  final void Function()? onTap;
  final String text;

  get cubit => null;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
