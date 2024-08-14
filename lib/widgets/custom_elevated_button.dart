
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/widgets/base_button.dart';

import '../theme/custom_text_Style.dart';

class CustomElevatedButton extends BaseButton {
  CustomElevatedButton(
  {Key? key,
  this.decoration,
  this.leftIcon,
  this.rightIcon,
  EdgeInsets? margin,
  VoidCallback? onPressed,
  ButtonStyle? buttonStyle,
  Alignment? alignment,
  TextStyle? buttonTextStyle,
  bool? isDisabled,
  double? height,
  double? width,
    required String text})
      : super(
  text: text,
  onPressed: onPressed,
  buttonStyle: buttonStyle,
  isDisabled: isDisabled,
    buttonTextStyle: buttonTextStyle,
    height: height,
    width: width,
    alignment: alignment,
    margin: margin,
  );
  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  @override  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
        alignment: alignment ?? Alignment.center,
        child: buildElevatedButtonWidget)
        : buildElevatedButtonWidget;
  }
  Widget get buildElevatedButtonWidget => Container(
    height: this.height ?? 40,
    width: this.width ?? double.maxFinite,
    margin: margin,        decoration: decoration,
    child: ElevatedButton(
      style: buttonStyle,
      onPressed: isDisabled ?? false ? null : onPressed ?? () {

      },          child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        leftIcon ?? const SizedBox.shrink(),
        Text(     text,
          style: buttonTextStyle ??
              CustomTextStyles.titleSmallRobotoWhiteA700,
        ),
        rightIcon ?? const SizedBox.shrink()
      ],
    ),
    ),
  );
}