import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jmrassignmentapp/core/app_export.dart';
import 'package:jmrassignmentapp/presentation/app_navigation_screen/bloc/app_navigation_bloc.dart';
import 'package:jmrassignmentapp/presentation/app_navigation_screen/bloc/app_navigation_events.dart';
import 'package:jmrassignmentapp/presentation/app_navigation_screen/bloc/app_navigation_state.dart';
import 'package:jmrassignmentapp/presentation/app_navigation_screen/models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {

  const AppNavigationScreen({Key? key})
      : super( key: key,);
  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );

  }

  @override  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body:SizedBox(
              width: 375,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "App Navigation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 20.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Check your app's UI from the below demo screens of your app.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0XFF888888),
                              fontSize: 16.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Divider(
                          height: 1.h,
                          thickness: 1.h,
                          color: Color(0XFF000000),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration:const  BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Travel home - Tab Container",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.travelHomeTabContainerScreen),
                            ),
                            /*_buildScreenTitle(
                              context,
                              screenTitle: "Search result",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchResultScreen),
                            )*/
                          ],
                        ),
                      ),

                    ),
                  )

                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildScreenTitle(
      BuildContext context, {
        required String screenTitle,
        Function? onTapScreenTitle,  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),        child: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              screenTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 20.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(height: 5.h),
          Divider(
            height: 1.h,
            thickness: 1.h,
            color: Color(0XFF888888),
          )          ],
      ),
      ),
    );

  }  /// Common click event
    void onTapScreenTitle(String routeName) {
   // NavigatorService.pushNamed(routeName);
  }


}

