import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:DDD_firebase_framework/application/screen_one/screen_one_form/screen_one_form_bloc.dart';

//Just a very simple screen holind a String that proves that state is kept... I'm not using ValueObjects to hold this email this is just a proof of concept
class ScreenOneForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScreenOneFormBloc, ScreenOneFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Form(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .bloc<ScreenOneFormBloc>()
                      .add(ScreenOneFormEvent.emailChanged(value)),
                ),
              ],
            ),
          );
        });
  }
}
