
import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/theme/theme_helper.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
  {Key? key,
  this.alignment,
  this.height,
  this.width,
  this.decoration,
  this.padding,
  this.onTap,
    this.child})
      : super(          key: key,);
  final Alignment? alignment;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final BoxDecoration? decoration;
  final double? width;
  final VoidCallback? onTap;
  final double? height;
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
        alignment: alignment ??
            Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }
  Widget get iconButtonWidget =>
      SizedBox(
    height: height ?? 0,
    width: width ?? 0,
    child: DecoratedBox(
      decoration: decoration ??
          BoxDecoration(
            color: appTheme.green50,
            borderRadius: BorderRadius.circular(20),
          ),
      child: IconButton(
        padding: padding ?? EdgeInsets.zero,
        onPressed: onTap,
        icon: child ?? Container(),
      ),
    ),
      );
  }
