import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:DDD_firebase_framework/injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
