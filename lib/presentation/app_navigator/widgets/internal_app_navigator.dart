import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:DDD_firebase_framework/application/app_navigator/app_navigator_bloc.dart';

//Internal navigator here are all the items in the bottom nav bar
//The body uses an indexed Stack so state isn't lost between screen changes

class InternalAppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppNavigatorBloc, AppNavigatorState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          //I placed the AppBar in this widget so it won't transition every time we navigate between screens
          appBar: AppBar(
            title: Text(
              //Title obtained from the state
              context.bloc<AppNavigatorBloc>().state.currentScreenName,
            ),
          ),
          //Using an IndexedStack so we can keep states after navigating to another screen
          body: IndexedStack(
            index: context.bloc<AppNavigatorBloc>().state.currentIndex,
            children: context.bloc<AppNavigatorBloc>().state.pageList,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: context.bloc<AppNavigatorBloc>().state.currentIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                title: Text('Scan'),
              ),
            ],
            onTap: (index) {
              //We trigger the right event based on the nav bar index tapped
              if (index == 0) {
                context.bloc<AppNavigatorBloc>().add(
                      const AppNavigatorEvent.navBarTappedHome(),
                    );
              } else if (index == 1) {
                context.bloc<AppNavigatorBloc>().add(
                      const AppNavigatorEvent.navBarTappedProfile(),
                    );
              } else if (index == 2) {
                context.bloc<AppNavigatorBloc>().add(
                      const AppNavigatorEvent.navBarTappedScan(),
                    );
              }
            },
          ),
        );
      },
    );
  }
}
