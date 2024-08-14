

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jmrassignmentapp/core/app_export.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/bloc/search_result_bloc.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/bloc/search_result_event.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/bloc/search_result_state.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/models/flightdetailslist_item_model.dart';
 import 'package:jmrassignmentapp/presentation/search_result_screen/models/serach_result_model.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/widgets/flight_details_item_widgets.dart';
import 'package:jmrassignmentapp/widgets/app_bar/app_leading_image.dart';
import 'package:jmrassignmentapp/widgets/app_bar/app_title.dart';
import 'package:jmrassignmentapp/widgets/app_bar/custom_app_bar.dart';

import '../../theme/theme_helper.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key? key})
      : super(key: key,);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultBloc>(
      create: (context) =>
      SearchResultBloc(SearchResultState(
        searchResultModelObj: SearchResultModel(),
      ))
        ..add(SearchResultInitialEvent()),
      child: SearchResultScreen(),
    );
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: _buildAppBar(context),
        body: Container(
          width: 428.h,
          padding: EdgeInsets.all(16.h),
          child: ListView(

            children: [
              _buildFlightInfo(context),
              SizedBox(height: 20.h),
              _buildDateOptionsRow(context),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_851_flight_found".tr,
                  style: CustomTextStyles.titleSmallMetropolisBluegray90001,
                ),
              ),
              SizedBox(height: 20.h),
              _buildFlightDetailsList(context)
            ],

          ),
        ),
      ),
    );

  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {

    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 24.h,
          bottom: 28.h,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },      ),
      title: AppbarTitle(
        text: "lbl_ezy_travel".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      styleType: Style.bgFill,
    );

}

  Widget _buildFlightInfo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.h,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "msg_blr_bengaluru".tr,
            style: CustomTextStyles.titleSmallMetropolisBluegray90002,
          ),
          SizedBox(height: 6.h),
          Text("msg_departure_sat".tr,
            style: CustomTextStyles.labelLargeMetropolisBluegray90002,
          ),
          SizedBox(height: 8.h),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "lbl_round_trip2".tr,
                style: CustomTextStyles.titleSmallMetropolisYellow900,
              ),
              SizedBox(width: 14.h),
              Text(
                "lbl_modify_search".tr,
                style: CustomTextStyles.labelLargeMetropolisPrimary.copyWith(
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 14.h,
              right: 8.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_sort".tr,
                  style: CustomTextStyles.titleSmallMetropolisGray80002,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDownGray80002,
                  height: 6.h,
                  width: 10.h,
                  margin: EdgeInsets.only(left: 8.h),
                ),
                Spacer(flex: 52,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_non_stop".tr,
                    style: CustomTextStyles.titleSmallMetropolisGray80002,
                  ),
                ),
                Spacer(flex: 47,),
                Text(
                  "lbl_filter".tr,
                  style: CustomTextStyles.titleSmallMetropolisGray80002,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFilter,
                  height: 16.h,
                  width: 16.h,
                  margin: EdgeInsets.only(left: 8.h),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDateOptionsRow(BuildContext context) {

    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 8.h),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: _buildDateOption(
                    context,
                    mar23Mar: "lbl_mar_22_mar_23".tr,
                    price: "lbl_from_aed_741".tr,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: _buildDateOption(
                      context,
                      mar23Mar: "lbl_mar_23_mar_24".tr,
                      price: "lbl_from_aed_721".tr,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 2.h),
          _buildDateOption(
            context,
            mar23Mar: "lbl_mar_24_mar_25".tr,
            price: "lbl_from_aed_750".tr,
          )
        ],
      ),
    );
  }

  Widget _buildFlightDetailsList(BuildContext context) {

    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 8.h),
      child:
      BlocSelector<SearchResultBloc, SearchResultState, SearchResultModel?>(
        selector: (state) => state.searchResultModelObj,
        builder: (context, searchResultModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 22.h,
              );
            },
            itemCount:
            searchResultModelObj?.flightdetailslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              FlightdetailslistItemModel model =
                  searchResultModelObj?.flightdetailslistItemList[index] ??
                      FlightdetailslistItemModel();
              return FlightdetailslistItemWidget(
                model,
              );
            },

          );
        },
      ),
    );

  }

  Widget _buildDateOption(
      BuildContext context, {
        required String mar23Mar,
        required String price,
      }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            mar23Mar,
            style: CustomTextStyles.labelLargeMetropolisGray80002_1.copyWith(
              color: appTheme.gray80002,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            price,
            style: CustomTextStyles.labelLargeMetropolisGray80002.copyWith(
              color: appTheme.gray80002,
            ),
          )
        ],
      ),
    );
  }
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}

