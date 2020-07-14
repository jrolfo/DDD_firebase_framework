import 'package:DDD_firebase_framework/application/profiles/profile_form_bloc.dart';
import 'package:DDD_firebase_framework/domain/profiles/value_objects.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

class ProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.bloc<ProfileFormBloc>().add(
          const ProfileFormEvent.initializeCountries(),
        );
    return BlocConsumer<ProfileFormBloc, ProfileFormState>(
        listener: (context, state) {
      state.saveFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold((failure) {
          FlushbarHelper.createError(
            message: failure.map(
              unexpected: (_) => 'Unexpected Error',
              insufficientPermissions: (_) => 'Insufficient persmissions',
              unableToUpdate: (_) => 'Unable to update',
              requiresRecentLogin: (_) => 'Update requires new login',
              profileNotFound: (_) => 'Profile not found',
            ),
          ).show(context);
        }, (_) {
          //TODO display snackbar stating udpate successfull
        }),
      );
    }, builder: (context, state) {
      return Form(
        autovalidate: state.showErrorMessages,
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            //Name
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
              autocorrect: false,
              onChanged: (value) => context
                  .bloc<ProfileFormBloc>()
                  .add(ProfileFormEvent.nameChanged(value)),
              validator: (_) =>
                  context.bloc<ProfileFormBloc>().state.profile.name.value.fold(
                      (f) => f.maybeMap(
                            empty: (_) => 'Name is required',
                            orElse: () => null,
                          ),
                      (_) => null),
            ),
            const SizedBox(height: 8),

            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Last Name',
              ),
              autocorrect: false,
              onChanged: (value) => context
                  .bloc<ProfileFormBloc>()
                  .add(ProfileFormEvent.lastNameChanged(value)),
              validator: (_) => context
                  .bloc<ProfileFormBloc>()
                  .state
                  .profile
                  .lastName
                  .value
                  .fold(
                      (f) => f.maybeMap(
                            empty: (_) => 'Last name is required',
                            orElse: () => null,
                          ),
                      (_) => null),
            ),
            const SizedBox(height: 8),

            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Phone Number',
              ),
              autocorrect: false,
              onChanged: (value) => context
                  .bloc<ProfileFormBloc>()
                  .add(ProfileFormEvent.phoneNumberChanged(value)),
              validator: (_) => context
                  .bloc<ProfileFormBloc>()
                  .state
                  .profile
                  .phoneNumber
                  .value
                  .fold(
                      (f) => f.maybeMap(
                            invalidPhoneNumber: (_) =>
                                'Phone number is invalid',
                            empty: (_) => 'Phone number required',
                            orElse: () => null,
                          ),
                      (_) => null),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Gender',
              ),
              validator: (_) => context
                  .bloc<ProfileFormBloc>()
                  .state
                  .profile
                  .gender
                  .value
                  .fold(
                      (f) => f.maybeMap(
                            empty: (_) => 'Gender required',
                            orElse: () => null,
                          ),
                      (_) => null),
              onChanged: (value) => context
                  .bloc<ProfileFormBloc>()
                  .add(ProfileFormEvent.genderSelected(value)),
              items: ProfileGender.predefinedGenders
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 8),

            DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Country',
                ),
                validator: (_) => context
                    .bloc<ProfileFormBloc>()
                    .state
                    .profile
                    .country
                    .value
                    .fold(
                        (f) => f.maybeMap(
                              empty: (_) => 'Country required',
                              orElse: () => null,
                            ),
                        (_) => null),
                onChanged: (value) => context
                    .bloc<ProfileFormBloc>()
                    .add(ProfileFormEvent.countrySelected(value)),
                items: context.bloc<ProfileFormBloc>().state.countriesList.fold(
                  (l) => null,
                  (countries) {
                    List<DropdownMenuItem<String>> ret;
                    ret = List();
                    countries.asList().forEach((ProfileCountry pc) {
                      ret.add(DropdownMenuItem<String>(
                        value: pc.getOrCrash(),
                        child: Text(pc.getOrCrash()),
                      ));
                    });
                    return ret;
                  },
                )),
            const SizedBox(height: 8),
            RaisedButton(
              onPressed: () {
                context.bloc<ProfileFormBloc>().add(
                      const ProfileFormEvent.saved(),
                    );
              },
              color: Colors.lightBlue,
              child: const Text(
                'SAVES',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            if (state.isSaving) ...[
              const SizedBox(height: 8),
              const LinearProgressIndicator(value: null),
            ],
          ],
        ),
      );
    });
  }
}
