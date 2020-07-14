import 'package:DDD_firebase_framework/domain/profiles/profile.dart';
import 'package:DDD_firebase_framework/domain/profiles/profile_failure.dart';
import 'package:DDD_firebase_framework/domain/profiles/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, Unit>> create(Profile profile);
  Future<Either<ProfileFailure, Profile>> read();
  Future<Either<ProfileFailure, Unit>> update(Profile profile);
  Future<Either<ProfileFailure, Unit>> delete(Profile profile);
  Stream<Either<ProfileFailure, KtList<ProfileCountry>>> getCountries();
  Stream<Either<ProfileFailure, KtList<ProfileProvince>>> getProvinces(
      String countryId);
  Stream<Either<ProfileFailure, KtList<ProfileCity>>> getCities(
      String countryId, String provinceId);
}
