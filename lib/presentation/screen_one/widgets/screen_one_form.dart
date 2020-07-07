import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:DDD_firebase_framework/application/screen_one/screen_one_form/screen_one_form_bloc.dart';

class ScreenOneForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Hay que wrappear todo dentro de un bloc consumer parecido al react provider
    return BlocConsumer<ScreenOneFormBloc, ScreenOneFormState>(
        //listener escucha por errores... es como un watcher de vue
        listener: (context, state) {},

        //Aca va el arbol de widgets en builder... debe ser para que tengan acceso al estado y eventos de bloc
        builder: (context, state) {
          //devuelvo todo adentro de un form
          return Form(
            //el hijo del form es un ListView
            child: ListView(
              padding: const EdgeInsets.all(8),
              //Los hijos del list view los empiezo a enumerar aca
              children: [
                //Esta gronchada es para dejar espacio entre widgets
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
                      .bloc<ScreenOneFormBloc>()
                      .add(ScreenOneFormEvent.emailChanged(value)),
                  //validator mantiene el valor del posible error en el text field toma una funcion como parametro
                ),
              ],
            ),
          );
        });
  }
}
