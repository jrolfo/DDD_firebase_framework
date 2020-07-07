import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:DDD_firebase_framework/application/auth/auth_bloc.dart';
import 'package:DDD_firebase_framework/presentation/routes/router.gr.dart';

// Pagina en blanco con un circular progress indicator que se usa solamente para
//ver en que estado esta la app...

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        //mapeo contra todos los estados posibles esto se puede hacer asi porque
        //el estado devuelve una union de clases (hecha con freeze)
        state.map(
          initial: (_) {},
          authenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.appNavigator),
          unauthenticated: (_) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.signInPage),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
