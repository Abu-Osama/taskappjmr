

import 'package:equatable/equatable.dart';
import 'package:jmrassignmentapp/data/selectionPopupModel/selection_popup_model.dart';
import 'package:jmrassignmentapp/presentation/treavel_home_page/model/viewheirachy_model.dart';

class TravelHomeModel extends Equatable {
  TravelHomeModel(
      {this.dropdownItemList = const [],
        this.viewhierarchyItemList = const []});
  List<SelectionPopupModel> dropdownItemList;
  List<ViewhierarchyItemModel> viewhierarchyItemList;
  TravelHomeModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ViewhierarchyItemModel>? viewhierarchyItemList,
  }) {    return TravelHomeModel(
    dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    viewhierarchyItemList:
    viewhierarchyItemList ?? this.viewhierarchyItemList,    );
  }
  @override
  List<Object?> get props => [dropdownItemList, viewhierarchyItemList];
}