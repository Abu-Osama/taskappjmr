import 'package:flutter/cupertino.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/model/viewheirachy_model.dart';
import 'package:jmrassignmentapp/theme/custom_text_style.dart';
import 'package:jmrassignmentapp/widgets/custom_image_view.dart';

class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(this.viewhierarchyItemModelObj, {Key? key})
      : super(key: key,
  );
  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
        height: 312,
        width: 226,
        child: Stack(
            alignment:
            Alignment.center,
            children: [
              CustomImageView(
                imagePath: viewhierarchyItemModelObj.image!,
                height: 312,
                width: double.maxFinite,
                radius: BorderRadius.circular(
                  10,
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.only(
                        left: 22,
                        right: 22,
                        bottom: 20,
                      ),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              viewhierarchyItemModelObj.text1!,
                              style: CustomTextStyles.labelLargeMetropolisWhiteA700,
                            ),
                            SizedBox(height: 4),
                            Text(
                              viewhierarchyItemModelObj.text2!,
                              style: CustomTextStyles.bodySmallWhiteA700,
                            ),
                            SizedBox(height: 4),
                            Text(
                              viewhierarchyItemModelObj.text3!,
                              style: CustomTextStyles.titleLargeMetropolisWhiteA700,
                            ),
                          ]
                      )
                  )
              )
            ]
        )
    );


  }

}