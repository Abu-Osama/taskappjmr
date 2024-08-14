

import 'package:equatable/equatable.dart';
import 'package:jmrassignmentapp/presentation/travel_home_tab_container/models/travel_home_tab_models.dart';

class TravelHomeTabContainerState extends Equatable {
  TravelHomeTabContainerState({this.travelHomeTabContainerModelObj});
  TravelHomeTabContainerModel? travelHomeTabContainerModelObj;
  @override  List<Object?> get props => [travelHomeTabContainerModelObj];
  TravelHomeTabContainerState copyWith(
      {TravelHomeTabContainerModel? travelHomeTabContainerModelObj}) {
    return TravelHomeTabContainerState(      travelHomeTabContainerModelObj:
    travelHomeTabContainerModelObj ?? this.travelHomeTabContainerModelObj,
    );
  }
}