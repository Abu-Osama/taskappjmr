
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/core/utils/size_utils.dart';
import 'package:jmrassignmentapp/theme/theme_helper.dart';
enum Style { bgFill }
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  CustomAppBar({Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions}) : super(
    key: key,
  );

  final double? height;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;

  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 76,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override Size get preferredSize =>
      Size(
        SizeUtils.width,
        height ?? 76.h,
      );

  _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: 76.h,
          width: 428.h,
          decoration: BoxDecoration(
            color: appTheme.lightGreen200,
          ),
        );
      default:
        return null;
    }
  }
}
