


import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jmrassignmentapp/core/utils/image_constant.dart';
import 'package:jmrassignmentapp/data/selectionPopupModel/selection_popup_model.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/bloc/travel_home_event.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/bloc/travel_home_state.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/model/viewheirachy_model.dart';

class TravelHomeBloc extends Bloc<TravelHomeEvent, TravelHomeState> {
  TravelHomeBloc(TravelHomeState initialState) : super(initialState) {
    on<TravelHomeInitialEvent>(_onInitialize);  }
  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel( id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<ViewhierarchyItemModel> fillViewhierarchyItemList() {
    return [
      ViewhierarchyItemModel(
          image: ImageConstant.imgRectangle2720,
          text1: "From AED867",
          text2: "Economy round trip",
          text3: "Saudi Arabia "),
      ViewhierarchyItemModel(
          image: ImageConstant.imgRectangleimage25,
          text1: "From AED867",
          text2: "Economy round trip",
          text3: "Kuwait")
    ];
  }

  _onInitialize(
      TravelHomeInitialEvent event,
      Emitter<TravelHomeState> emit,  ) async {
    emit(state.copyWith(
      departureDateController: TextEditingController(),
      returnDateController: TextEditingController(),
      passengerCountController: TextEditingController(),
      cabinClassController: TextEditingController(),
    ));    emit(state.copyWith(
        travelHomeModelObj: state.travelHomeModelObj?.copyWith(
          //dropdownItemList: fillDropdownItemList(),
          viewhierarchyItemList: fillViewhierarchyItemList(),
        )));
  }



}