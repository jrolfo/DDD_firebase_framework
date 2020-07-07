import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'screen_one_form_event.dart';
part 'screen_one_form_state.dart';

part 'screen_one_form_bloc.freezed.dart';

@injectable
class ScreenOneFormBloc extends Bloc<ScreenOneFormEvent, ScreenOneFormState> {
  @override
  ScreenOneFormState get initialState => ScreenOneFormState.initial();

  @override
  Stream<ScreenOneFormState> mapEventToState(
    ScreenOneFormEvent event,
  ) async* {
    yield state.copyWith(
      emailAddress: event.emailStr,
    );
  }
}
