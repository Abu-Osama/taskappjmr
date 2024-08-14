import 'package:flutter/material.dart';
import 'package:jmrassignmentapp/core/app_export.dart';
import 'package:jmrassignmentapp/presentation/travel_home_tab_container/bloc/travel_home_tab_container_bloc.dart';
import 'package:jmrassignmentapp/presentation/travel_home_tab_container/bloc/travel_home_tab_event.dart';
import 'package:jmrassignmentapp/presentation/travel_home_tab_container/bloc/travel_home_tab_state.dart';
import 'package:jmrassignmentapp/presentation/travel_home_tab_container/models/travel_home_tab_models.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/travel_home_page.dart';
import 'package:jmrassignmentapp/widgets/app_bar/app_leading_image.dart';
import 'package:jmrassignmentapp/widgets/app_bar/app_title.dart';
import 'package:jmrassignmentapp/widgets/app_bar/app_trailing_image.dart';
import 'package:jmrassignmentapp/widgets/app_bar/custom_app_bar.dart';

class TravelHomeTabContainerScreen extends StatefulWidget {
  const TravelHomeTabContainerScreen({Key? key})
      : super(
    key: key,
  );
  @override  TravelHomeTabContainerScreenState createState() =>
      TravelHomeTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TravelHomeTabContainerBloc>(
      create: (context) =>
      TravelHomeTabContainerBloc(TravelHomeTabContainerState(
        travelHomeTabContainerModelObj: TravelHomeTabContainerModel(),
      )
      )            ..add(TravelHomeTabContainerInitialEvent()),
      child: TravelHomeTabContainerScreen(),
    );
  }
}
class TravelHomeTabContainerScreenState    extends State<TravelHomeTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
    tabviewController.addListener(_handleTabSelection);

  }
  void _handleTabSelection() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelHomeTabContainerBloc, TravelHomeTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _buildTripOptions(context),
                    SizedBox(
                      height: 1116.h,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          TravelHomePage.builder(context),
                          TravelHomePage.builder(context),
                          TravelHomePage.builder(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
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
    ),        onTap: () {
          onTapArrowleftone(context);
          },
    ),
    title: AppbarTitle(
    text: "lbl_search_flights".tr,
    margin: EdgeInsets.only(left: 12.h),
    ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.only(
            top: 24.h,
            right: 24.h,
            bottom: 28.h,
          ),
        )
      ],
      styleType: Style.bgFill,
    );
  }
  Widget _buildTripOptions(BuildContext context) {


    return SizedBox(
      height: 164.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 148.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup606,
                    ),
                    fit: BoxFit.cover,
                  )
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage88217,
                    height: 148.h,
                    width: double.maxFinite,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(padding: EdgeInsets.only(
                      left: 24.h,
                      top: 18.h,
                    ),
                      child: Text(
                        "msg_let_s_start_your".tr,
                        style: CustomTextStyles.titleMediumWhiteA700,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 46.h,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 24.h,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 46.h,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.black900.withOpacity(0.09),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: const Offset(
                            -2,
                            4,
                          ),
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: Colors.white,
                        indicator: BoxDecoration(
                          color:const Color(0xff2EA446),
                          borderRadius: BorderRadius.circular(
                            0.0,
                          ),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xff2EA446),
                                Color(0xff2EA446),
                              ]
                          ),
                        ),
                        unselectedLabelColor: appTheme.black900,
                        tabs: [
                          Tab(
                            child:
                            SizedBox(
                            width: double.maxFinite,
                            child:Text(
                              "lbl_round_trip".tr,
                              textAlign: TextAlign.center,
                            ),
                           )
                           ),
                          Tab(
                            child:
                            SizedBox(
                              width: double.maxFinite,
                              child:
                            Text(
                              "lbl_one_way".tr,
                              textAlign: TextAlign.center,

                            ),
                            )
                          ),
                          Tab(
                            child:
                            SizedBox(
                              width: double.maxFinite,
                              child:
                            Text(
                              "lbl_multi_city".tr,
                              textAlign: TextAlign.center,

                            ),
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
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