


import 'package:jmrassignmentapp/core/utils/image_constant.dart';

class ViewhierarchyItemModel {
  ViewhierarchyItemModel(
      {this.image, this.text1, this.text2, this.text3, this.id})
  {    image = image ?? ImageConstant.imgRectangle2720;
    text1 = text1 ?? "From AED867";
    text2 = text2 ?? "Economy round trip";
    text3 = text3 ?? "Saudi Arabia ";
    id = id ?? "";  }
  String? image;
  String? text1;
  String? text2;
  String? text3;
  String? id;
}