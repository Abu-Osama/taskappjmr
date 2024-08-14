

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jmrassignmentapp/core/utils/navigator_service.dart';
import 'package:jmrassignmentapp/presentation/travel_home_tab_container/bloc/travel_home_tab_event.dart';
import 'package:jmrassignmentapp/presentation/travel_home_tab_container/bloc/travel_home_tab_state.dart';
import 'package:jmrassignmentapp/routes/app_routes.dart';

class TravelHomeTabContainerBloc    extends Bloc<TravelHomeTabContainerEvent, TravelHomeTabContainerState> {
  TravelHomeTabContainerBloc(TravelHomeTabContainerState initialState)
      : super(initialState) {
    on<TravelHomeTabContainerInitialEvent>(_onInitialize);
  }
  _onInitialize(
      TravelHomeTabContainerInitialEvent event,
      Emitter<TravelHomeTabContainerState> emit,  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      /*NavigatorService.popAndPushNamed(
        AppRoutes.searchResultScreen,
      );*/
    }
    );

  }
}