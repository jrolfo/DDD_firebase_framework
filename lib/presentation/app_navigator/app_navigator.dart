import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:DDD_firebase_framework/application/app_navigator/app_navigator_bloc.dart';
import 'package:DDD_firebase_framework/injection.dart';
import 'package:DDD_firebase_framework/presentation/app_navigator/widgets/internal_app_navigator.dart';

//This class is the AppNavigaotr it's a wrapper to call the bloc provider and the internalAppNavigator
class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<AppNavigatorBloc>(),
        child: InternalAppNavigator(),
      ),
    );
  }
}
/*
Option without bloc this won't keep state between screen changes... you'll need to implement a List
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DDD_firebase_framework/presentation/screen_one/screen_one.dart';
import 'package:DDD_firebase_framework/presentation/screen_three/screen_three.dart';
import 'package:DDD_firebase_framework/presentation/screen_two/screen_two.dart';

class AppNavigator extends StatefulWidget {
  @override
  _AppNavigatorState createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  int _currentIdx = 0;
  String _currentScreen = 'Home';

  final tabs = [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentScreen),
      ),
      body: tabs[_currentIdx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIdx,
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
          setState(() {
            _currentIdx = index;
          });
        },
      ),
    );
  }
}
*/
