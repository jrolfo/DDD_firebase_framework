import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:DDD_firebase_framework/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Hay que wrappear todo dentro de un bloc consumer parecido al react provider
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        //listener escucha por errores... es como un watcher de vue
        listener: (context, state) {
      //este campo del estado tiene los errores, el fold lo usa para extraer el valor del option...
      //
      state.authFailureOrSuccessOption.fold(
        //Si no tiene nada... no hacemos nada
        () {},
        //Si tiene un either volvemos a usar el fold para mapear el lado izquierdo y el derecho
        //Por el lado izquierdo mapeamos los errores
        (either) => either.fold((failure) {
          FlushbarHelper.createError(
            message: failure.map(
              cancelledByUser: (_) => 'Sign in cancelled by user',
              serverError: (_) => 'Server Error',
              emailAlreadyInUse: (_) => 'Email already in use',
              invalidEmailAndPasswordCombination: (_) =>
                  'Invalid Email or Password',
            ),
          ).show(context);
        }, //por el lado derecho lo que seria un void debemos navegar
            (_) {
          //TODO NAVIGATE
        }),
      );
    },
        //Aca va el arbol de widgets en builder... debe ser para que tengan acceso al estado y eventos de bloc
        builder: (context, state) {
      //devuelvo todo adentro de un form
      return Form(
        //no se ajajaj
        autovalidate: state.showErrorMessages,
        //el hijo del form es un ListView
        child: ListView(
          padding: const EdgeInsets.all(8),
          //Los hijos del list view los empiezo a enumerar aca
          children: [
            //Esta gronchada es para dejar espacio entre widgets
            const SizedBox(height: 8),
            //El icono de la app
            const Text(
              '📖',
              style: TextStyle(fontSize: 130),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            //El Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
              //Cuando hay un cambio disparo el evento emailChanged
              onChanged: (value) => context
                  .bloc<SignInFormBloc>()
                  .add(SignInFormEvent.emailChanged(value)),
              //validator mantiene el valor del posible error en el text field toma una funcion como parametro
              validator: (_) =>
                  //Lo tomo de contex.bloc... etc porque si lo tomara desde state.emailAddress.value... llegaria un caracter tarde
                  context.bloc<SignInFormBloc>().state.emailAddress.value.fold(
                      (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null),
                      (_) => null),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              autocorrect: false,
              obscureText: true,
              onChanged: (value) => context
                  .bloc<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
              validator: (_) => context
                  .bloc<SignInFormBloc>()
                  .state
                  .password
                  .value
                  .fold(
                      (f) => f.maybeMap(
                          shortPassword: (_) => 'Short Password',
                          orElse: () => null),
                      (_) => null),
            ),
            //Una Row para meter los 2 botones a la par
            Row(
              children: [
                //El expanded lo que hace es maximizar el ancho del boton
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      //En el on pressed lo que hago es directamente triggerear eventos
                      context.bloc<SignInFormBloc>().add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('SIGN IN'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      context.bloc<SignInFormBloc>().add(
                            const SignInFormEvent
                                .registerWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('REGISTER'),
                  ),
                ),
              ],
            ),
            RaisedButton(
              onPressed: () {
                context.bloc<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithGooglePressed(),
                    );
              },
              color: Colors.lightBlue,
              child: const Text(
                'SIGN IN WITH GOOGLE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            if (state.isSubmitting) ...[
              const SizedBox(height: 8),
              const LinearProgressIndicator(value: null),
            ],
          ],
        ),
      );
    });
  }
}
