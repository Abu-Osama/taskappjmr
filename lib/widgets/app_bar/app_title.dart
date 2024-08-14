
import 'package:flutter/cupertino.dart';
import 'package:jmrassignmentapp/theme/theme_helper.dart';

import '../../theme/custom_text_Style.dart';

class AppbarTitle extends StatelessWidget {
  AppbarTitle({Key? key, required this.text, this.margin, this.onTap})
      : super(
    key: key,);
  final String text;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;

  @override Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      }, child: Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Text(
        text,
        style: CustomTextStyles.titleMediumGray80001.copyWith(
          color: appTheme.gray80001,
        ),
      ),
    ),
    );
  }
}