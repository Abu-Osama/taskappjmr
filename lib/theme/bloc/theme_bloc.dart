

import 'package:jmrassignmentapp/theme/bloc/theme_event.dart';
import 'package:jmrassignmentapp/theme/bloc/theme_state.dart';

import '../../core/app_export.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeState initialState) : super(initialState) {
    on<ThemeChangeEvent>(_changeTheme);  }
  _changeTheme(    ThemeChangeEvent event,
      Emitter<ThemeState> emit,  ) async {
    emit(state.copyWith(themeType: event.themeType));
  }
}