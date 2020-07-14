import 'package:DDD_firebase_framework/application/profiles/profile_form_bloc.dart';
import 'package:DDD_firebase_framework/presentation/profile/widgets/profile_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:DDD_firebase_framework/injection.dart';

// Just a dummy screen to wrap the screenOneForm inside a bloc provider
@lazySingleton
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<ProfileFormBloc>(),
        child: ProfileForm(),
      ),
    );
  }
}
