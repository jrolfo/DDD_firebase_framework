import 'package:auto_route/auto_route_annotations.dart';
import 'package:DDD_firebase_framework/presentation/app_navigator/app_navigator.dart';
import 'package:DDD_firebase_framework/presentation/sign_in/sign_in_page.dart';
import 'package:DDD_firebase_framework/presentation/splash/splash_page.dart';

//el routing es re facil... solamente tengo que listar los widgets que son ruteables
@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  //La anotacion initial asigna el root (/) a el widget
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  AppNavigator appNavigator;
}
