

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/widgets/custom_image_view.dart';

class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({Key? key,
    this.imagePath, this.margin,
    this.onTap})
      : super(key: key,
  );
  final String? imagePath;
  final EdgeInsetsGeometry?margin;
  final Function? onTap;

  @override Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 24,
          width: 24,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}