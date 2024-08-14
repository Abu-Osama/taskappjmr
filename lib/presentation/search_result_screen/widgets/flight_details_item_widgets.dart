
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/core/utils/image_constant.dart';
import 'package:jmrassignmentapp/core/utils/size_utils.dart';
import 'package:jmrassignmentapp/localization/app_localization.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/models/flightdetailslist_item_model.dart';
import 'package:jmrassignmentapp/theme/custom_button_style.dart';
import 'package:jmrassignmentapp/theme/theme_helper.dart';
import 'package:jmrassignmentapp/widgets/custom_image_view.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../widgets/custom_oulined_button.dart';

class FlightdetailslistItemWidget extends StatelessWidget {

  FlightdetailslistItemWidget(this.flightdetailslistItemModelObj, {Key? key})
      : super(          key: key,
  );
  FlightdetailslistItemModel flightdetailslistItemModelObj;
  Widget build(BuildContext context) {


    return Container(      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse550,
                        height: 34.h,
                        width: 34.h,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                      ),Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          flightdetailslistItemModelObj.onwardText!,
                          style: CustomTextStyles
                              .titleSmallMetropolisOnErrorContainer,
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Text(
                            flightdetailslistItemModelObj.onwardPrice!,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            flightdetailslistItemModelObj.onwardTime!,
                            style: CustomTextStyles
                                .titleLargeMetropolisOnErrorContainer,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            flightdetailslistItemModelObj.onwardLocation!,
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                      SizedBox(width: 12.h),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 10.h),
                            child: Column(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup1000006122,
                                  height: 18.h,
                                  width: double.maxFinite,
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  flightdetailslistItemModelObj
                                      .onwardDurationT!,
                                  style: CustomTextStyles
                                      .titleSmallMetropolisBluegray80001,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            flightdetailslistItemModelObj.returnTime!,
                            style: CustomTextStyles
                                .titleLargeMetropolisOnErrorContainer,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            flightdetailslistItemModelObj.returnLocation!,
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  flightdetailslistItemModelObj.stops!,
                  style: CustomTextStyles.labelLargeMetropolisBluegray80001,
                ),
                SizedBox(height: 12.h),
               const SizedBox(
                  width: double.maxFinite,
                  child: Divider(),
                )
              ],
            ),
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse550,
                        height: 34.h,
                        width: 34.h,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          flightdetailslistItemModelObj.returnText!,
                          style: CustomTextStyles
                              .titleSmallMetropolisOnErrorContainer,
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Text(
                            flightdetailslistItemModelObj.returnPrice!,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            flightdetailslistItemModelObj.returnTime1!,
                            style: CustomTextStyles
                                .titleLargeMetropolisOnErrorContainer,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            flightdetailslistItemModelObj.returnLocation1!,
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                      SizedBox(width: 12.h),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup1000006122,
                                height: 18.h,
                                width: 126.h,
                              ),
                              SizedBox(height: 8.h),
                              Padding(
                                padding: EdgeInsets.only(right: 36.h),
                                child: Text(
                                  flightdetailslistItemModelObj
                                      .returnDurationT!,
                                  style: CustomTextStyles
                                      .titleSmallMetropolisBluegray80001,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            flightdetailslistItemModelObj.returnTime2!,
                            style: CustomTextStyles
                                .titleLargeMetropolisOnErrorContainer,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            flightdetailslistItemModelObj.returnLocation2!,
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
               const SizedBox(
                  width: double.maxFinite,
                  child: Divider(),
                ),
                SizedBox(height: 14.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCheapestButton(context),
                      _buildRefundableButton(context),
                      Spacer(),
                      Text(
                        flightdetailslistItemModelObj.flightDetails!,
                        style: CustomTextStyles.labelLargeMetropolisYellow900,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDownYellow900,
                        height: 6.h,
                        width: 10.h,
                        margin: EdgeInsets.only(left: 4.h),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h)
        ],
      ),
    );

}


  Widget _buildCheapestButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 70.h,
      text: "lbl_cheapest".tr,
      alignment: Alignment.center,
    );
  }  /// Section Widget
Widget _buildRefundableButton(BuildContext context) {
    return CustomOutlinedButton(      width: 70.h,
      text: "lbl_refundable".tr,
      margin: EdgeInsets.only(left: 16.h),
      buttonStyle: CustomButtonStyles.outlineBlue,
      buttonTextStyle: CustomTextStyles.labelSmallBlueA200,
      alignment: Alignment.center,
    );
  }
}