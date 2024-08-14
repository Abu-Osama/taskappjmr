import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/core/app_export.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/bloc/travel_home_bloc.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/bloc/travel_home_event.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/bloc/travel_home_state.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/model/travel_home_model.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/model/viewheirachy_model.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/widgets/viewheiracu_item.dart';
import 'package:jmrassignmentapp/widgets/custom_drop_down.dart';
import 'package:jmrassignmentapp/widgets/custom_elevated_button.dart';
import 'package:jmrassignmentapp/widgets/custom_floating_textfiled.dart';
import 'package:jmrassignmentapp/widgets/custom_icon_button.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({Key? key}) : super(key: key,  );
  @override
  TravelHomePageState createState() => TravelHomePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TravelHomeBloc>(
      create: (context) => TravelHomeBloc(TravelHomeState(
        travelHomeModelObj: TravelHomeModel(),
      ))
  ..add(TravelHomeInitialEvent()),
      child: TravelHomePage(),
    );
  }
}


class TravelHomePageState extends State<TravelHomePage>
    with AutomaticKeepAliveClientMixin<TravelHomePage> {

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 16.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildFlightSearchForm(context),
                            const SizedBox(height: 28),
                           /* SizedBox(
                              width: double.maxFinite,
                              height: double.maxFinite,
                              child: */
                              ListView(
                                scrollDirection: Axis.vertical,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(right: 15.h),
                                  child:Row(
                                    children: [
                                      _buildDepartureDate(context),
                                      SizedBox(width: 5.h,),
                                      _buildReturnDate(context)
                                    ],
                                  ),
                                  ),
                                  SizedBox(height: 10.h,),
                                  Container(
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(right: 15.h),
                                    child:Row(
                                      children: [
                                        _buildPassengerCount(context),
                                        SizedBox(width: 5.h,),
                                        _buildCabinClass(context)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.h,),



                                  Container(
                                    margin: EdgeInsets.only(right: 85.h,left: 85.h),
                                    child: _buildSearchFlightsButton(context),
                                  ),

                                  SizedBox(height: 10.h,),
                                  _buildTravelInspirations(context),
                                  const SizedBox(height: 34),
                                  _buildFlightHotelPackages(context)
                                  /*_buildDepartureDate(context),
                                  _buildReturnDate(context),
                                  _buildPassengerCount(context),
                                  _buildCabinClass(context),
                                  _buildSearchFlightsButton(context),
                                  _buildFlightHotelPackages(context)*/
                                ],
                              ),
                           // )
                          ],
                        ),
                      )
                    ],
                  ),
                )
            )
        )
    );
  }

  Widget _buildDepartureDate(BuildContext context) {

    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: BlocSelector<TravelHomeBloc, TravelHomeState,
                TextEditingController?>(
                selector: (state) => state.departureDateController,
                builder: (context, departureDateController) {
                  return CustomFloatingTextField(
                    controller: departureDateController,
                    labelText: "lbl_departure".tr,
                    labelStyle: CustomTextStyles.titleMediumGray70001,
                    hintText: "lbl_departure".tr,
                    suffix: Container(
                      margin: const EdgeInsets.fromLTRB(12, 16, 10, 16),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgReply,
                        height: 18,
                        width: 18,
                      ),
                    ),
                    suffixConstraints: const BoxConstraints(
                      maxHeight: 54,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 16,
                    ),
                  );
                }
            )
        )
    );


    }



    /// Section Widget
    Widget _buildReturnDate(BuildContext context) {
        return Expanded(
        child:BlocSelector<TravelHomeBloc, TravelHomeState, TextEditingController?>(
          selector: (state) => state.returnDateController,
          builder: (context, returnDateController) {
            return CustomFloatingTextField(
              controller: returnDateController,
              labelText: "lbl_return".tr,
              labelStyle: CustomTextStyles.titleMediumBluegray100,
              hintText: "lbl_return".tr,
              suffix: Container(
                margin: const EdgeInsets.fromLTRB(12, 16, 10, 16),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 18,
                  width: 18,
                ),
              ),
              suffixConstraints: const BoxConstraints(
                maxHeight: 54,
              ),
              contentPadding:const  EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 16,
              ),
              borderDecoration: FloatingTextFormFieldStyleHelper.outlineBlueGray,
            );
            },
        ),
        );
  }


  Widget _buildPassengerCount(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: BlocSelector<TravelHomeBloc, TravelHomeState,
            TextEditingController?>(
          selector: (state) => state.passengerCountController,
          builder: (context, passengerCountController) {
            return CustomFloatingTextField(
              controller: passengerCountController,
              labelText: "lbl_travelers".tr,
              labelStyle: CustomTextStyles.titleMediumGray70001,
              hintText: "lbl_travelers".tr,
            contentPadding: EdgeInsets.fromLTRB(10, 28, 10, 8),
            );
            },
        ),
      ),
    );
  }


  Widget _buildCabinClass(BuildContext context) {
    return Expanded(
      child:
      BlocSelector<TravelHomeBloc, TravelHomeState, TextEditingController?>(
        selector: (state) => state.cabinClassController,
        builder: (context, cabinClassController) {
          return CustomFloatingTextField(
            controller: cabinClassController,
            labelText: "lbl_cabin_class".tr,
            labelStyle: CustomTextStyles.titleMediumGray70001,
            hintText: "lbl_cabin_class".tr,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.fromLTRB(10.h, 28.h, 10.h, 8.h),
          );
          },
      ),
    );
  }

  Widget _buildSearchFlightsButton(BuildContext context) {
    return CustomElevatedButton(
      height: 60.h,
      width: 40.h,
      text: "lbl_search_flights".tr,
      onPressed: (){
        NavigatorService.pushNamed(
        AppRoutes.searchResultScreen,
      );
      },
    );
  }

  Widget _buildFlightSearchForm(BuildContext context) {

    return Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(right: 24),
        child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding:const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 20,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgAirplane,
                            height: 28,
                            width: 28,
                          ),
                         const SizedBox(width: 16),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 4.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_from".tr,
                                      style: CustomTextStyles
                                          .bodyLargeMetropolisBluegray800,
                                    ),
                                    SizedBox(height: 2),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Row(
                                        children: [
                                          const Expanded(  child: Divider(),
                                          ),
                                          SizedBox(width: 30),
                                          CustomIconButton( height: 42,
                                            width: 42,
                                            padding: EdgeInsets.all(10),
                                            child: CustomImageView(
                                              imagePath: ImageConstant.imgContrast,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 10),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLinkedin,
                            height: 18.h,
                            width: 12.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text(
                              "lbl_to".tr,
                              style:
                              CustomTextStyles.bodyLargeMetropolisBluegray800,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h)
                  ],
                ),
              )
            ]
        )

    );


  }

  Widget _buildFlightHotelPackages(BuildContext context) {

    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(right: 24),
       child: Column(
       children: [
         SizedBox(
        width: double.maxFinite,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
          padding: EdgeInsets.only(left: 8),
           child: Text(
             "msg_flight_hotel_packages".tr,
             style: CustomTextStyles.titleMediumPrimaryContainer,
           ),
         ),
         const SizedBox(height: 14),
         CustomImageView(imagePath: ImageConstant.imgRectangle2720294x396,
           height: 294,
           width: double.maxFinite,
           radius: BorderRadius.circular(
             10,
           ),
         )
       ],
       ),
    )

        ],

    )
    );
  }

  Widget _buildTravelInspirations(BuildContext context) {


    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 24.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child:
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "msg_travel_inspirations".tr,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                      ),
                      BlocSelector<TravelHomeBloc, TravelHomeState,
                          TravelHomeModel?>(
                        selector: (state) => state.travelHomeModelObj,
                        builder: (context, travelHomeModelObj) {
                          return Expanded(child:
                            CustomDropDown(
                            width: 80.h,
                            icon: Container(
                              margin: EdgeInsets.only(left: 8.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowdown,
                                height: 10.h,
                                width: 14.h,
                              ),
                            ),
                            hintText: "lbl_dubai".tr,
                            items: travelHomeModelObj?.dropdownItemList ?? [],
                            contentPadding: EdgeInsets.only(
                              left: 12.h,
                              top: 2.h,
                              bottom: 2.h,
                            ),
                            )
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 312.h,
            width: 412.h,
            child:
            BlocSelector<TravelHomeBloc, TravelHomeState, TravelHomeModel?>(
              selector: (state) => state.travelHomeModelObj,
              builder: (context, travelHomeModelObj) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10.h,
                    );
                  },
                  itemCount:
                  travelHomeModelObj?.viewhierarchyItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ViewhierarchyItemModel model =
                        travelHomeModelObj?.viewhierarchyItemList[index] ??
                            ViewhierarchyItemModel();
                    return ViewhierarchyItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );

  }



}

