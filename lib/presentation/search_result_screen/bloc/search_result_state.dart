

import 'package:equatable/equatable.dart';
import 'package:jmrassignmentapp/presentation/search_result_screen/models/serach_result_model.dart';

class SearchResultState extends Equatable {
  SearchResultState({this.searchResultModelObj});
  SearchResultModel? searchResultModelObj;
  @override  List<Object?> get props => [searchResultModelObj];
  SearchResultState copyWith({SearchResultModel? searchResultModelObj}) {
    return SearchResultState(
      searchResultModelObj: searchResultModelObj ?? this.searchResultModelObj,
    );
  }
}