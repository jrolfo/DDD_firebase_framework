part of 'app_navigator_bloc.dart';

@freezed
abstract class AppNavigatorEvent with _$AppNavigatorEvent {
  //One event per option in the nav bar (maybe I should have created a single event NavBarTapped and pass the index so the application layer can do the work of selecting the screen)
  const factory AppNavigatorEvent.navBarTappedHome() = NavBarTappedHome;
  const factory AppNavigatorEvent.navBarTappedProfile() = NavBarTappedProfile;
  const factory AppNavigatorEvent.navBarTappedScan() = NavBarTappedScan;
}
