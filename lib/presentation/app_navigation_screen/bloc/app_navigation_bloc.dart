


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jmrassignmentapp/presentation/app_navigation_screen/bloc/app_navigation_events.dart';
import 'package:jmrassignmentapp/presentation/app_navigation_screen/bloc/app_navigation_state.dart';

class AppNavigationBloc extends Bloc<AppNavigationEvent, AppNavigationState> {
  AppNavigationBloc(AppNavigationState initialState) : super(initialState) {
    on<AppNavigationInitialEvent>(_onInitialize);  }
  _onInitialize(
      AppNavigationInitialEvent event,
      Emitter<AppNavigationState> emit,  )
  async {

  }
}