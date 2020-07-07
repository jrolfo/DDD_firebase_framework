import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:DDD_firebase_framework/domain/auth/i_auth_facade.dart';
import 'package:DDD_firebase_framework/domain/core/errors.dart';
import 'package:DDD_firebase_framework/injection.dart';

//Esto es genial... creo extensiones en clases que ya existen... osea agrego funcionabilidad que yo necesito a clases sin tocarlas...
extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
    //La razon por al que usa getIt.. es porque IAuthFacade es un Lazy singleton.. con esto logramos que solo se instancie una sola Fachada de autorizacion... es como un import de javascript que son todos singleton y no se te instancia uno cada vez que haces un require
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return Firestore.instance
        .collection('users')
        .document(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
