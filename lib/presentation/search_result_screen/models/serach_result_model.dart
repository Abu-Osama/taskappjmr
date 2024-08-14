

import 'package:equatable/equatable.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/models/flightdetailslist_item_model.dart';

class SearchResultModel extends Equatable {
  SearchResultModel({this.flightdetailslistItemList = const []});
  List<FlightdetailslistItemModel> flightdetailslistItemList;
  SearchResultModel copyWith(
      {List<FlightdetailslistItemModel>? flightdetailslistItemList}) {
    return SearchResultModel(
      flightdetailslistItemList:
      flightdetailslistItemList ?? this.flightdetailslistItemList,
    );
  }  @override  List<Object?> get props => [flightdetailslistItemList];
}