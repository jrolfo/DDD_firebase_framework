import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:DDD_firebase_framework/application/app_navigator/app_navigator_bloc.dart';

class InternalAppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppNavigatorBloc, AppNavigatorState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              context.bloc<AppNavigatorBloc>().state.currentScreenName,
            ),
          ),
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
