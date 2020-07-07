import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:DDD_firebase_framework/application/screen_one/screen_one_form/screen_one_form_bloc.dart';
import 'package:DDD_firebase_framework/injection.dart';
import 'package:DDD_firebase_framework/presentation/screen_one/widgets/screen_one_form.dart';

@lazySingleton
class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<ScreenOneFormBloc>(),
        child: ScreenOneForm(),
      ),
    );
  }
}
