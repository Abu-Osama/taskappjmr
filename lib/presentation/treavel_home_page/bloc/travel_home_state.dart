

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:jmrassignmentapp/data/selectionPopupModel/selection_popup_model.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/model/travel_home_model.dart';

class TravelHomeState extends Equatable {
  TravelHomeState({this.departureDateController,
    this.returnDateController,
    this.passengerCountController,
    this.cabinClassController,
    this.selectedDropDownValue,
    this.travelHomeModelObj});

  TextEditingController? departureDateController;
  TextEditingController? returnDateController;
  TextEditingController? passengerCountController;
  TextEditingController? cabinClassController;
  SelectionPopupModel? selectedDropDownValue;
  TravelHomeModel? travelHomeModelObj;


  @override List<Object?> get props =>
      [
        departureDateController,
        returnDateController,
        passengerCountController,
        cabinClassController,
        selectedDropDownValue,
        travelHomeModelObj
      ];

  TravelHomeState copyWith({
    TextEditingController? departureDateController,
    TextEditingController? returnDateController,
    TextEditingController? passengerCountController,
    TextEditingController? cabinClassController,
    SelectionPopupModel? selectedDropDownValue,
    TravelHomeModel? travelHomeModelObj,}) {
    return TravelHomeState(
      departureDateController:
      departureDateController ?? this.departureDateController,
      returnDateController: returnDateController ?? this.returnDateController,
      passengerCountController:
      passengerCountController ?? this.passengerCountController,
      cabinClassController: cabinClassController ?? this.cabinClassController,
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      travelHomeModelObj: travelHomeModelObj ?? this.travelHomeModelObj,
    );
  }
}