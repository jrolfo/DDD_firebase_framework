part of 'app_navigator_bloc.dart';

@freezed
abstract class AppNavigatorEvent with _$AppNavigatorEvent {
  const factory AppNavigatorEvent.navBarTappedHome() = NavBarTappedHome;
  const factory AppNavigatorEvent.navBarTappedProfile() = NavBarTappedProfile;
  const factory AppNavigatorEvent.navBarTappedScan() = NavBarTappedScan;
}
