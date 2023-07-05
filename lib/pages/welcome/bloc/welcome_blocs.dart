import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_university/pages/welcome/bloc/welcome_events.dart';
import 'package:my_university/pages/welcome/bloc/welcome_states.dart';
import 'package:my_university/pages/welcome/welcome.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeState()) {
    on<WelcomeEvent>((event, emit) {
      emit(WelcomeState(page: state.page));
    });
  }
}
