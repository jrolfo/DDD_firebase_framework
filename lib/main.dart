import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:DDD_firebase_framework/injection.dart';
import 'package:DDD_firebase_framework/presentation/core/app_widget.dart';

void main() {
  //Inyeccion de codigo... esto permite meter codigo
  configureInjection(Environment.prod);
  //app widget es el root component
  runApp(AppWidget());
}
