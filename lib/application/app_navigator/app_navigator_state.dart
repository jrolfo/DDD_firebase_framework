part of 'app_navigator_bloc.dart';

//States... ScreenOne selected would be the initial one
@freezed
abstract class AppNavigatorState with _$AppNavigatorState {
  const factory AppNavigatorState.initial({
    @required int currentIndex,
    @required String currentScreenName,
    @required List<Widget> pageList,
  }) = ScreenOneSelected;
  const factory AppNavigatorState.screenTwoSelected({
    @required int currentIndex,
    @required String currentScreenName,
    @required List<Widget> pageList,
  }) = ScreenTwoSelected;
  const factory AppNavigatorState.screenThreeSelected({
    @required int currentIndex,
    @required String currentScreenName,
    @required List<Widget> pageList,
  }) = ScreenThreeSelected;
}
