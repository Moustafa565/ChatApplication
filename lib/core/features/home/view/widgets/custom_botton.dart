import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.iconData, required this.onTap});
  final IconData iconData;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 50,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
