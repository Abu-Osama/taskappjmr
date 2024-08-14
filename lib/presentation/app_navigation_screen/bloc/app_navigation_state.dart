


import 'package:equatable/equatable.dart';
import 'package:jmrassignmentapp/presentation/app_navigation_screen/models/app_navigation_model.dart';

class AppNavigationState extends Equatable {
  AppNavigationState({this.appNavigationModelObj});
  AppNavigationModel? appNavigationModelObj;
  @override  List<Object?>
  get props => [appNavigationModelObj];
  AppNavigationState copyWith({AppNavigationModel? appNavigationModelObj}) {
    return AppNavigationState(
      appNavigationModelObj:
      appNavigationModelObj ?? this.appNavigationModelObj,
    );
  }
}