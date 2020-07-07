import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:DDD_firebase_framework/presentation/screen_one/screen_one.dart';
import 'package:DDD_firebase_framework/presentation/screen_three/screen_three.dart';
import 'package:DDD_firebase_framework/presentation/screen_two/screen_two.dart';

part 'app_navigator_event.dart';
part 'app_navigator_state.dart';

part 'app_navigator_bloc.freezed.dart';

//AppNavigator bloc this holds all the state events and logic to change between screens

@injectable
class AppNavigatorBloc extends Bloc<AppNavigatorEvent, AppNavigatorState> {
  //This list is used to hold all the possible screens
  final List<Widget> tabs = [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
  ];

  @override
  AppNavigatorState get initialState => AppNavigatorState.initial(
        currentIndex: 0,
        currentScreenName: 'Home',
        pageList: tabs,
      );

  @override
  Stream<AppNavigatorState> mapEventToState(
    AppNavigatorEvent event,
  ) async* {
    yield* event.map(
      navBarTappedHome: (e) async* {
        yield state.copyWith(
          currentIndex: 0,
          currentScreenName: 'Home',
        );
      },
      navBarTappedProfile: (e) async* {
        yield state.copyWith(
          currentIndex: 1,
          currentScreenName: 'Profile',
        );
      },
      navBarTappedScan: (e) async* {
        yield state.copyWith(
          currentIndex: 2,
          currentScreenName: 'Scan',
        );
      },
    );
  }
}
