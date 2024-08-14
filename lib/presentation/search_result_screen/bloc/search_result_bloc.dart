

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/bloc/search_result_event.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/bloc/search_result_state.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/models/flightdetailslist_item_model.dart';

class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  SearchResultBloc(SearchResultState initialState) : super(initialState) {
    on<SearchResultInitialEvent>(_onInitialize);
  }

  _onInitialize(SearchResultInitialEvent event,
      Emitter<SearchResultState> emit,) async {
    emit(state.copyWith(
        searchResultModelObj: state.searchResultModelObj?.copyWith(
          flightdetailslistItemList: fillFlightdetailslistItemList(),
        )));
  }

  List<FlightdetailslistItemModel> fillFlightdetailslistItemList() {
    return [
      FlightdetailslistItemModel(
          onwardText: "Onward - Garuda Indonesia",
          onwardPrice: "AED 409",
          onwardTime: "14:35",
          onwardLocation: "BLR - Bengaluru",
          onwardDurationT: "4h 30m",
          returnTime: "21:55",
          returnLocation: "DXB - Dubai",
          stops: "2 Stops",
          returnText: "Return - Garuda Indonesia",
          returnPrice: "AED 359",
          returnTime1: "21:55",
          returnLocation1: "DXB - Dubai",
          returnDurationT: "4h 30m",
          returnTime2: "14:35",
          returnLocation2: "BLR - Bengaluru",
          flightDetails: "Flight Details"),
      FlightdetailslistItemModel(
          onwardText: "Onward - Garuda Indonesia",
          onwardPrice: "AED 409",
          stops: "2 Stops",
          returnText: "Return - Garuda Indonesia",
          returnPrice: "AED 359",
          returnTime1: "21:55",
          returnLocation1: "DXB - Dubai",
          returnDurationT: "4h 30m",
          returnTime2: "14:35",
          returnLocation2: "BLR - Bengaluru",
          flightDetails: "Flight Details"),
      FlightdetailslistItemModel()];
  }
}