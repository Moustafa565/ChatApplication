import 'package:flutter/material.dart';

import '../../../../style/image_app.dart';

class CustomBottonImage extends StatelessWidget {
  const CustomBottonImage(
      {super.key, required this.image, required this.ontap});
  final String image;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: CircleAvatar(
        radius: 45,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}
