import 'package:DDD_firebase_framework/domain/profiles/value_objects.dart';
import 'package:DDD_firebase_framework/domain/profiles/i_profile_repository.dart';
import 'package:DDD_firebase_framework/domain/profiles/profile_failure.dart';
import 'package:DDD_firebase_framework/domain/profiles/profile.dart';
import 'package:DDD_firebase_framework/infrastructure/core/firestore_helpers.dart';
import 'package:DDD_firebase_framework/infrastructure/profiles/profile_city_dtos.dart';
import 'package:DDD_firebase_framework/infrastructure/profiles/profile_country_dtos.dart';
import 'package:DDD_firebase_framework/infrastructure/profiles/profile_dtos.dart';
import 'package:DDD_firebase_framework/infrastructure/profiles/profile_province_dtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

import 'package:kt_dart/kt.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final Firestore _firestore;
  final FirebaseAuth _firebaseAuth;

  ProfileRepository(this._firestore, this._firebaseAuth);

  @override
  Future<Either<ProfileFailure, Unit>> create(Profile profile) async {
    try {
      final userDoc = await _firestore.userDocument();
      final profileDto = ProfileDto.fromDomain(profile);
      await userDoc.setData(profileDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermissions());
      } else {
        return left(const ProfileFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> delete(Profile profile) async {
    try {
      final userDoc = await _firestore.userDocument();
      final FirebaseUser user = await _firebaseAuth.currentUser();
      //First delete collection
      await userDoc.delete();
      //Then delete the actual firebase user
      await user.delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermissions());
      } else if (e.message.contains('ERROR_REQUIRES_RECENT_LOGIN')) {
        return left(const ProfileFailure.requiresRecentLogin());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ProfileFailure.unableToUpdate());
      } else {
        return left(const ProfileFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> update(Profile profile) async {
    try {
      final userDoc = await _firestore.userDocument();
      final profileDto = ProfileDto.fromDomain(profile);
      await userDoc.updateData(profileDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ProfileFailure.unableToUpdate());
      } else {
        return left(const ProfileFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProfileFailure, Profile>> read() async {
    final userDoc = await _firestore.userDocument();

    try {
      final DocumentSnapshot doc = await userDoc.get();

      if (doc.exists) {
        return right(ProfileDto.fromFirestore(doc).toDomain());
      } else {
        return left(const ProfileFailure.profileNotFound());
      }
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermissions());
      } else {
        return left(const ProfileFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ProfileFailure, KtList<ProfileCity>>> getCities(
      String countryId, String provinceId) async* {
    final countriesCollection = await _firestore.countriesCollection();
    yield* countriesCollection
        .document(countryId)
        .collection('provinces')
        .document(provinceId)
        .collection('cities')
        .snapshots()
        .map(
          //el mapeo devuelve un right osea el KtList
          (snapshot) => right<ProfileFailure, KtList<ProfileCity>>(
            snapshot.documents
                .map((doc) => ProfileCityDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        ) //funcion para evaluar los posibles errores esto es tremendo catch de una promesa de JS
        .onErrorReturnWith((e) {
      return left(const ProfileFailure.unexpected());
    });
  }

  @override
  Stream<Either<ProfileFailure, KtList<ProfileProvince>>> getProvinces(
      String countryId) async* {
    final countriesCollection = await _firestore.countriesCollection();
    print('cockwe');
    print(countryId);
    yield* countriesCollection
        .document(countryId)
        .collection('provinces')
        .snapshots()
        .map(
          //el mapeo devuelve un right osea el KtList
          (snapshot) => right<ProfileFailure, KtList<ProfileProvince>>(
            snapshot.documents
                .map((doc) => ProfileProvinceDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        ) //funcion para evaluar los posibles errores esto es tremendo catch de una promesa de JS
        .onErrorReturnWith((e) {
      return left(const ProfileFailure.unexpected());
    });
  }

  @override
  Stream<Either<ProfileFailure, KtList<ProfileCountry>>> getCountries() async* {
    final countriesCollection = await _firestore.countriesCollection();
    yield* countriesCollection
        .snapshots()
        .map(
          //el mapeo devuelve un right osea el KtList
          (snapshot) => right<ProfileFailure, KtList<ProfileCountry>>(
            snapshot.documents
                .map((doc) => ProfileCountryDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        ) //funcion para evaluar los posibles errores esto es tremendo catch de una promesa de JS
        .onErrorReturnWith((e) {
      return left(const ProfileFailure.unexpected());
    });
  }
}
