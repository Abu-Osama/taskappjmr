
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/data/selectionPopupModel/selection_popup_model.dart';

import '../theme/custom_text_style.dart';

class CustomDropDown extends StatelessWidget {

  CustomDropDown(
      {Key? key,
        this.alignment,
        this.width,
        this.boxDecoration,
        this.focusNode,
        this.icon,
        this.autofocus = false,
        this.textStyle,
        this.hintText,
        this.hintStyle,
        this.items,
        this.prefix,
        this.prefixConstraints,
        this.suffix,
        this.suffixConstraints,
        this.contentPadding,
        this.validator,
        this.onChanged})
      : super( key: key,
  );

  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final FocusNode? focusNode;
  final Widget? icon;
  final bool? autofocus;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final List<SelectionPopupModel>? items;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final FormFieldValidator<SelectionPopupModel>? validator;
  final Function(SelectionPopupModel)? onChanged;
  @override  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment ?? Alignment.center,
        child: dropDownWidget)
        : dropDownWidget;
  }

  Widget get dropDownWidget => Container(
    width: width ?? double.maxFinite,
    decoration: boxDecoration,
    child: DropdownButtonFormField<SelectionPopupModel>(
      focusNode: focusNode,
      icon: icon,
      autofocus: autofocus!,
      style: textStyle ?? CustomTextStyles.titleMediumPrimaryContainer,
      hint: Text(
        hintText ?? "",
        style: hintStyle ?? CustomTextStyles.titleMediumPrimaryContainer,
      ),
      items: items?.map((SelectionPopupModel item) {
        return DropdownMenuItem<SelectionPopupModel>(
          value: item,
          child: Text(
            item.title,
            overflow: TextOverflow.ellipsis,
            style:
            hintStyle ?? CustomTextStyles.titleMediumPrimaryContainer,
          ),
        );
      }).toList(),
      decoration: decoration,
      validator: validator,
      onChanged: (value) {
        onChanged!(value!);
      },
    ),
  );
  InputDecoration get decoration => InputDecoration(
    prefixIcon: prefix,
    prefixIconConstraints: prefixConstraints,
    suffixIcon: suffix,
    suffixIconConstraints: suffixConstraints,
    isDense: true,
    contentPadding: contentPadding ??
        const EdgeInsets.only(
          left: 2,
          top: 2,
          bottom: 2,
        ),
    border: InputBorder.none,
  );

}